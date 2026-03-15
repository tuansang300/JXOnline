--description: ¶ëáÒÅÉ×êÌìÆÂµĞÈË
--author: yuanlan	
--date: 2003/3/4


Include("emenemy01_Default.lua")
Include("emenemy01_UTask_enroll.lua")


function OnDeath()

UTask_em = GetTask(1);

if (UTask_em == 7) then	
	emenemy01_UTask_enroll()					
else
	emenemy01_Default()
end;
	
end;	


