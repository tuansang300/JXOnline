--description: ¶ëáÒÅÉ»ğºüË®ÃæµĞÈË
--author: yuanlan	
--date: 2003/3/5


Include("emenemy03_Default.lua")
Include("emenemy03_UTask_35.lua")


function OnDeath()

UTask_em = GetTask(1);

if (UTask_em == 35) then	
	emenemy03_UTask_35()					
else
	emenemy03_Default()
end;
	
end;	


