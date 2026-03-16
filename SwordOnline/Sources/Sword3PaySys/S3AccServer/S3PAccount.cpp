//-----------------------------------------//
//                                         //
//  File		: S3PAccount.cpp		   //
//	Author		: Yang Xiaodong            //
//	Modified	: 8/29/2002                //
//                                         //
//-----------------------------------------//
#pragma warning(disable: 4786)
#include "S3PAccount.h"
#include "S3PDBConVBC.h"
#include "GlobalFun.h"
#include "S3PResultVBC.h"
#include "COMUtil.h"

S3PAccount::S3PAccount()
{
}

S3PAccount::~S3PAccount()
{
}

DWORD GetGMID();

int S3PAccount::Login(S3PDBConVBC* pConn, const char* strAccName, const char* strPassword, DWORD ClientID, WORD& nExtPoint, DWORD& nLeftTime)
{
	gTrace("[Login] === Start === AccName='%s', Password='%s', ClientID=%u",
		strAccName ? strAccName : "(null)",
		strPassword ? strPassword : "(null)",
		ClientID);

	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		gTrace("[Login] ERROR: pConn is NULL!");
		return iRet;
	}
	char strSQL[MAX_PATH];
	sprintf(strSQL, "select iClientID from Account_info where (cAccName = '%s') and (cPassword COLLATE Chinese_PRC_CS_AS = '%s')", strAccName, strPassword);
	gTrace("[Login] SQL: %s", strSQL);

	S3PResultVBC* pResult = NULL;
	if (pConn->QuerySql(strSQL, &pResult))
	{
		int nRows = pResult ? pResult->num_rows() : -1;
		gTrace("[Login] QuerySql OK, num_rows=%d", nRows);

		if (pResult->num_rows() <= 0)
		{
			iRet = E_ACCOUNT_OR_PASSWORD;
			gTrace("[Login] FAILED: Account or Password wrong (no rows)");
		}
		else
		{
			_variant_t clientID = 0L;
			pResult->get_field_data(0, &clientID, sizeof(_variant_t));
			gTrace("[Login] iClientID: vt=%d, lVal=%ld", clientID.vt, clientID.lVal);

			if (clientID.vt == VT_NULL || clientID.lVal == 0)
			{
				long iLeft = 0;
				long iExp = 0;
				gTrace("[Login] Account free, checking deposit...");
				if (GetLeftSecondsOfDeposit(pConn, strAccName, iLeft, iExp) == ACTION_SUCCESS && iLeft > 1800)
				{
					gTrace("[Login] Deposit OK: iLeft=%ld, iExp=%ld", iLeft, iExp);
					sprintf(strSQL, "update Account_info set iClientID = %d, dLoginDate = null where (cAccName = '%s')", ClientID, strAccName);
					if (pConn->Do(strSQL))
					{
						iRet = ACTION_SUCCESS;
						nExtPoint = iExp;
						nLeftTime = iLeft;
						gTrace("[Login] SUCCESS: nExtPoint=%d, nLeftTime=%u", nExtPoint, nLeftTime);
					}
					else
					{
						gTrace("[Login] FAILED: Update SQL failed");
					}
				}
				else
				{
					iRet = E_ACCOUNT_NODEPOSIT;
					gTrace("[Login] FAILED: No deposit or iLeft<=1800");
				}
			}
			else
			{
				iRet = (GetGMID() == clientID.lVal) ? E_ACCOUNT_FREEZE : E_ACCOUNT_EXIST;
				gTrace("[Login] FAILED: Account in use, iClientID=%ld, GMID=%u, %s",
					clientID.lVal, GetGMID(),
					(iRet == E_ACCOUNT_FREEZE) ? "FREEZE" : "EXIST");
			}
		}
	}
	else
	{
		gTrace("[Login] FAILED: QuerySql failed!");
	}

	if (pResult)
		pResult->unuse();

	gTrace("[Login] === End === result=%d", iRet);
	return iRet;
}

int S3PAccount::LoginGame(S3PDBConVBC* pConn, DWORD ClientID, const char* strAccName)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	DWORD NewClientID = 0;
	iRet = GetAccountGameID(pConn, strAccName, NewClientID);
	if (iRet == ACTION_SUCCESS)
	{
		if (NewClientID == ClientID)
		{
			char strSQL[MAX_PATH];
			//dLoginDate is null �Ѿ�Login֮��dLoginDate�Ż�null
			sprintf(strSQL, "update Account_info set dLoginDate = getdate() where (cAccName = '%s') and (iClientID = %d) and (dLoginDate is null)", strAccName, ClientID);
			if (pConn->Do(strSQL))
			{
				iRet = ACTION_SUCCESS;
			}
			else
				iRet = ACTION_FAILED;
		}
		else
			iRet = E_ACCOUNT_ACCESSDENIED;
	}
	return iRet;
}

int S3PAccount::Logout(S3PDBConVBC* pConn, DWORD ClientID, const char* strAccName, WORD nExtPoint)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[2*MAX_PATH];
	sprintf(strSQL, "update h set h.iLeftSecond = h.iLeftSecond - (datediff(second, a.dLoginDate, getdate())) from Account_Habitus h inner join Account_Info a on h.cAccName = a.cAccName where (datediff(second, getdate(), h.dEndDate) <= 0) and (h.iClientID = %d or h.iClientID = %d) and (h.cAccName = '%s') and (a.dLoginDate is not null)",
		ClientID, GetGMID(), strAccName);
	gTrace("[Logout] SQL1: %s", strSQL);
	pConn->Do(strSQL);

	if (nExtPoint != 0)
	{
		sprintf(strSQL, "update h set h.nExtPoint = CASE WHEN h.nExtPoint - %d >= 0 THEN h.nExtPoint - %d WHEN h.nExtPoint - %d < 0 THEN 0 END from Account_Habitus h inner join Account_Info a on h.cAccName = a.cAccName where (datediff(second, getdate(), h.dEndDate) <= 0) and (h.iClientID = %d or h.iClientID = %d) and (h.cAccName = '%s') and (a.dLoginDate is not null)",
			nExtPoint, nExtPoint, nExtPoint, ClientID, GetGMID(), strAccName);
		gTrace("[Logout] SQL2: %s", strSQL);
		pConn->Do(strSQL);
		//�����������Ϊִ�е�SQL�г�������
	}

	DWORD NewClientID = 0;
	iRet = GetAccountGameID(pConn, strAccName, NewClientID);
	if (iRet == ACTION_SUCCESS)
	{
		if (NewClientID == ClientID)
		{
			sprintf(strSQL, "update Account_info set iClientID = 0, dLogoutDate = getdate() where (cAccName = '%s') and (iClientID = %d)",
				strAccName, NewClientID);
			if (pConn->Do(strSQL))
			{
				iRet = ACTION_SUCCESS;
			}
			else
				iRet = ACTION_FAILED;
		}
		else if (NewClientID == GetGMID())
			iRet = ACTION_SUCCESS;
		else
			iRet = E_ACCOUNT_ACCESSDENIED;
	}

	return iRet;
}

int S3PAccount::ElapseTime(S3PDBConVBC* pConn, DWORD ClientID, const char* strAccName, const DWORD dwDecSecond)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	DWORD dwSecord = 0;
	iRet = QueryTime(pConn, ClientID, strAccName, dwSecord);
	if (iRet == ACTION_SUCCESS)
	{
		dwSecord = min(dwDecSecond, dwSecord);
		char strSQL[MAX_PATH];
		sprintf(strSQL, "update View_AccountMoney set iLeftSecond = iLeftSecond - %d where (cAccName = '%s') and (datediff(second, getdate(), dEndDate) <= 0) and (iClientID = %d)", dwSecord, strAccName, ClientID);
		if (pConn->Do(strSQL))
		{
			iRet = ACTION_SUCCESS;
		}
		else
			iRet = ACTION_FAILED;
	}
	return iRet;
}

int S3PAccount::QueryTime(S3PDBConVBC* pConn, DWORD ClientID, const char* strAccName, DWORD& dwSecond)
{
	dwSecond = 0;
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	DWORD NewClientID = 0;
	iRet = GetAccountGameID(pConn, strAccName, NewClientID);
	if (iRet == ACTION_SUCCESS)
	{
		if (NewClientID == ClientID)
		{
			long iLeftS = 0;
			long iExp = 0;
			iRet = GetLeftSecondsOfDeposit(pConn, strAccName, iLeftS, iExp);
			if (iRet == ACTION_SUCCESS)
				dwSecond = max(0, iLeftS);
		}
		else
			iRet = E_ACCOUNT_ACCESSDENIED;
	}
	return iRet;
}

int S3PAccount::ServerLogin(S3PDBConVBC* pConn, const char* strAccName, const char* strPassword, const DWORD Address, const short Port, const BYTE Mac[6], unsigned long& nGameID)
{
	nGameID = 0;
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[MAX_PATH];
	sprintf(strSQL, "select cIP, iPort, iid, cMemo from ServerList where (cServerName = '%s') and (cPassword COLLATE Chinese_PRC_CS_AS = '%s')", strAccName, strPassword);
	S3PResultVBC* pResult = NULL;
	if (pConn->QuerySql(strSQL, &pResult))
	{
		if (pResult->num_rows() <= 0)
			iRet = E_ACCOUNT_OR_PASSWORD;
		else
		{
			iRet = E_ADDRESS_OR_PORT;
			if ((Address & 0x0000FFFF) == 0x0000a8c0)
			{
				_variant_t clientid = 0L;
				pResult->get_field_data(2, &clientid, sizeof(_variant_t));
				nGameID = clientid.lVal;
				iRet = ACTION_SUCCESS;	//Local network not check ip
			}
			else
			{
				_variant_t vaddr;
				_variant_t vaMac;
				if (pResult->get_field_data(0, &vaddr, sizeof(_variant_t)) &&
					pResult->get_field_data(3, &vaMac, sizeof(_variant_t)) &&
					vaddr.vt == VT_BSTR && vaMac.vt == VT_BSTR)
				{
					DWORD addr = inet_addr((const char *)(_bstr_t)vaddr);
					char szmac[15];
					sprintf(szmac, "%02X%02X-%02X%02X-%02X%02X", Mac[0], Mac[1], Mac[2], Mac[3], Mac[4], Mac[5]);
					szmac[14] = 0;
					if (addr == Address &&
						strcmpi((const char *)(_bstr_t)vaMac, szmac) == 0)
					{
						_variant_t gameid = 0L;
						pResult->get_field_data(2, &gameid, sizeof(_variant_t));
						nGameID = gameid.lVal;
						iRet = ACTION_SUCCESS;
					}
				}
			}
		}
	}
	
	if (pResult)
		pResult->unuse();

	return iRet;
}

int S3PAccount::GetServerID(S3PDBConVBC* pConn, const char* strAccName, unsigned long& nGameID)
{
	nGameID = 0;
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[MAX_PATH];
	sprintf(strSQL, "select iid from ServerList where (cServerName = '%s')", strAccName);
	S3PResultVBC* pResult = NULL;
	if (pConn->QuerySql(strSQL, &pResult))
	{
		if (pResult->num_rows() <= 0)
			iRet = E_ACCOUNT_OR_PASSWORD;
		else
		{
			_variant_t clientid = 0L;
			pResult->get_field_data(0, &clientid, sizeof(_variant_t));
			nGameID = clientid.lVal;
			iRet = ACTION_SUCCESS;	//Local network not check ip
		}
	}
	
	if (pResult)
		pResult->unuse();

	return iRet;
}

int S3PAccount::CheckAddress(S3PDBConVBC* pConn, const DWORD Address, const short Port)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	if ((Address & 0x0000FFFF) == 0x0000a8c0)
		iRet = ACTION_SUCCESS;	//Local network not check ip
	else
	{
		char strSQL[MAX_PATH];
		in_addr add;
		add.s_addr = Address;
		char ip[INET_ADDRSTRLEN];

		inet_ntop(AF_INET, &add, ip, sizeof(ip));

		sprintf_s(strSQL, sizeof(strSQL),
			"select iid from ServerList where (cIP = '%s')",
			ip);
		S3PResultVBC* pResult = NULL;
		if (pConn->QuerySql(strSQL, &pResult))
		{
			if (pResult->num_rows() <= 0)
				iRet = E_ADDRESS_OR_PORT;
			else
				iRet = ACTION_SUCCESS;
		}
		if (pResult)
			pResult->unuse();
	}

	return iRet;
}

int S3PAccount::UnlockAll(S3PDBConVBC* pConn, DWORD ClientID)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[MAX_PATH];
	sprintf(strSQL, "update Account_info set iClientID = 0, dLogoutDate = getdate() where (iClientID = %d)", ClientID);
	pConn->Do(strSQL);
	
	return ACTION_SUCCESS;
}

int S3PAccount::ElapseAll(S3PDBConVBC* pConn, DWORD ClientID)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[2*MAX_PATH];
	sprintf(strSQL, "update h set h.iLeftSecond = h.iLeftSecond - (datediff(second, a.dLoginDate, getdate())) from Account_Habitus h inner join Account_Info a on h.cAccName = a.cAccName where (datediff(second, getdate(), h.dEndDate) <= 0) and (h.iClientID = %d) and (a.dLoginDate is not null)", ClientID);
	gTrace("[ElapseAll] SQL: %s", strSQL);
	pConn->Do(strSQL);

	return ACTION_SUCCESS;
}

int S3PAccount::GetAccountGameID(S3PDBConVBC* pConn, const char* strAccName, DWORD& ClientID)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[MAX_PATH];
	sprintf(strSQL, "select iClientID from Account_info where (cAccName = '%s')", strAccName);
	S3PResultVBC* pResult = NULL;
	if (pConn->QuerySql(strSQL, &pResult))
	{
		if (pResult->num_rows() <= 0)
			iRet = E_ACCOUNT_OR_PASSWORD;
		else
		{
			_variant_t lID = 0L;
			pResult->get_field_data(0, &lID, sizeof(_variant_t));
			ClientID = lID.lVal;
			iRet = ACTION_SUCCESS;
		}
	}
	
	if (pResult)
		pResult->unuse();

	return iRet;
}

int S3PAccount::GetLeftSecondsOfDeposit(S3PDBConVBC* pConn,
										const char* strAccName,
										long& liLeft,
										long& liExp)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}
	char strSQL[MAX_PATH];
	sprintf(strSQL, "select datediff(second, getdate(), dEndDate), iLeftSecond, nExtPoint from View_AccountMoney where (cAccname = '%s')", strAccName);
	S3PResultVBC* pResult = NULL;
	if (pConn->QuerySql(strSQL, &pResult))
	{
		if (pResult->num_rows() <= 0)
			iRet = E_ACCOUNT_NODEPOSIT;
		else
		{
			_variant_t left = 0L;
			_variant_t diffDate;
			_variant_t extPoint;
			pResult->get_field_data(0, &diffDate, sizeof(_variant_t));
			pResult->get_field_data(1, &left, sizeof(_variant_t));
			pResult->get_field_data(2, &extPoint, sizeof(_variant_t));
			liLeft = left.lVal;

			if (diffDate.vt == VT_I4 && diffDate.lVal > 0)	//������Ч
			{
				liLeft += diffDate.lVal;
			}

			liExp = extPoint.lVal;

			iRet = ACTION_SUCCESS;
		}
	}
	
	if (pResult)
		pResult->unuse();

	return iRet;
}

int S3PAccount::VerifyUserModifyPassword(S3PDBConVBC* pConn, DWORD ClientID, const char* strAccName, const char* strPassword)
{
	int iRet = ACTION_FAILED;
	if (NULL == pConn)
	{
		return iRet;
	}

	DWORD NewClientID = 0;
	iRet = GetAccountGameID(pConn, strAccName, NewClientID);
	if (iRet == ACTION_SUCCESS)
	{
		if (NewClientID == ClientID)
		{
			char strSQL[MAX_PATH];
			S3PResultVBC* pResult = NULL;
			sprintf(strSQL, "select cAccName from Account_info where (cAccName = '%s') and (cSecPassword COLLATE Chinese_PRC_CS_AS = '%s')", strAccName, strPassword);
			if (pConn->QuerySql(strSQL, &pResult))
			{
				if (pResult->num_rows() <= 0)
					iRet = E_ACCOUNT_OR_PASSWORD;
				else
					iRet = ACTION_SUCCESS;
			}
			else
				iRet = ACTION_FAILED;
			
			if (pResult)
				pResult->unuse();
		}
		else
			iRet = E_ACCOUNT_ACCESSDENIED;
	}
	return iRet;
}
