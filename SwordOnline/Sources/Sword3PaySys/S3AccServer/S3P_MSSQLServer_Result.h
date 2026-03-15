// S3P_MSSQLServer_Result.h: interface for the S3P_MSSQLServer_Result class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_S3P_MSSQLSERVER_RESULT_H__16A5506B_D906_41FD_91A2_9A87D4EB4E53__INCLUDED_)
#define AFX_S3P_MSSQLSERVER_RESULT_H__16A5506B_D906_41FD_91A2_9A87D4EB4E53__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "KStdAfx.h"
#include "S3PResultVBC.h"

#include <string>
#include <map>
#include "msado15.tlh"

typedef std::map<std::string, std::string> ColumnAndValue;

class S3P_MSSQLServer_Result : public S3PResultVBC  
{
public:
	_RecordsetPtr m_pResult;
	S3P_MSSQLServer_Result()
	{
		m_pResult = NULL;
	}
	virtual ~S3P_MSSQLServer_Result()
	{
		m_pResult = NULL;
	}

	void AttachResult(_RecordsetPtr& pResult)
	{
		m_pResult = pResult;
	}

	virtual int num_rows() const;
	virtual int num_fields() const;
	virtual void data_seek (unsigned int offset, int nType) const;
	virtual bool get_field_data(unsigned int nfieldindex, void* pData, unsigned long nsize);
	virtual int unuse();

	virtual int size() const { return num_rows(); }
	virtual int rows() const { return num_rows(); }

	const ColumnAndValue operator [] (int i) const
	{
		ColumnAndValue cav;
		if (m_pResult == NULL)
			return cav;

		_RecordsetPtr pRS = m_pResult;
		try
		{
			pRS->MoveFirst();
			for (int n = 0; n < i; n++)
				pRS->MoveNext();

			long nFields = pRS->Fields->Count;
			for (long j = 0; j < nFields; j++)
			{
				_bstr_t bstrName = pRS->Fields->Item[j]->Name;
				_variant_t vtValue = pRS->Fields->Item[j]->Value;
				std::string column = (const char*)bstrName;
				std::string value;
				if (vtValue.vt != VT_NULL && vtValue.vt != VT_EMPTY)
				{
					_bstr_t bstrVal(vtValue);
					value = (const char*)bstrVal;
				}
				cav[column] = value;
			}
		}
		catch (_com_error& /*e*/)
		{
		}
		return cav;
	}
};

#endif // !defined(AFX_S3P_MSSQLSERVER_RESULT_H__16A5506B_D906_41FD_91A2_9A87D4EB4E53__INCLUDED_)
