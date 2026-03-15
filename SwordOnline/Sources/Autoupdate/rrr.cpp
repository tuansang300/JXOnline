void CBmpDlg::OnMouseMove(UINT nFlags, CPoint point)

{
	
	CWnd * pWnd; 
	
	HCURSOR MyCursor; 
	
	CRgn m_regionPower; //Region of POWER Button
	
	CRgn m_regionPlay; //Region of PLAY Button
	
	//建立位图按钮的矩形区域
	
	m_regionPower.CreateEllipticRgnIndirect(CRect(27,56,72,92)); 
	
	m_regionPlay.CreateEllipticRgnIndirect(CRect(78,56,120,92));
	
	CString ShowString0 = "鼠标的光标在位图按钮上!!!";
	
	… … … …
		
		m_bPlay = FALSE;
	
	m_bPower= FALSE;
	
	if (m_regionPower.PtInRegion(point)) //鼠标落在位图按钮之上 
		
	{
		
		m_bPower = TRUE; 
		
		//将位图按钮设置成获得输入状态
		
		pWnd= GetDlgItem(IDC_BUTTON_POWER);
		
		pWnd->SetFocus(); 
		
		SetCapture();
		
		InputEdit().SetWindowText(ShowString0);
		
		InputEdit().ShowWindow(TRUE); 
		
		//将鼠标光标变成小手形状
		
		MyCursor = AfxGetApp()->LoadCursor(IDC_MYCURSOR); 
		
		::SetCursor(MyCursor);
		
		VERIFY(m_Play.LoadBitmaps(" PLAYU"," PLAYD"," PLAYF"," PLAYX"));
		
		m_bPressedPlay = FALSE;
		
		return;
		
	}
	
	if (m_regionPlay.PtInRegion(point)) //鼠标落在位图按钮之上 
		
	{ 
		
		if (m_bPowerOn) { //如果电源已被开启
			
			m_bPlay = TRUE; 
			
			pWnd= GetDlgItem(IDC_BUTTON_PLAY);
			
			pWnd->SetFocus(); 
			
			SetCapture();
			
			InputEdit().SetWindowText(ShowString0);
			
			InputEdit().ShowWindow(TRUE);
			
			MyCursor = AfxGetApp()->LoadCursor(IDC_MYCURSOR);
			
			::SetCursor(MyCursor); 
			
			VERIFY(m_Power.LoadBitmaps(" POWERONU"," POWEROND"," POWERONF"));
			
		}
		
		else { //如果电源已被关闭
			
			ReleaseCapture();
			
			InputEdit().SetWindowText(ShowString0+ShowString2);
			
			InputEdit().ShowWindow(TRUE); 
			
			VERIFY(m_Power.LoadBitmaps(" POWEROFU"," POWEROFD"," POWEROFF"));
			
		} 
		
		m_bPressedPower= FALSE;
		
		return;
		
	}
	
	//鼠标落在所有的位图按钮之外 
	
	ReleaseCapture();
	
	InputEdit().SetWindowText(ShowString1);
	
	InputEdit().ShowWindow(TRUE); 
	
	pWnd= GetDlgItem(IDOK);
	
	pWnd->SetFocus(); 
	
	VERIFY(m_Play.LoadBitmaps(" PLAYU"," PLAYD"," PLAYF"," PLAYX"));
	
	if (m_bPowerOn)
		
		VERIFY(m_Power.LoadBitmaps(" POWERONU"," POWEROND"," POWERONF"));
	
	else
		
		VERIFY(m_Power.LoadBitmaps(" POWEROFU"," POWEROFD"," POWEROFF"));
	
	m_bPressedPlay = FALSE;
	
	m_bPressedPower= FALSE;
	
	CDialog::OnMouseMove(nFlags, point);
	
}