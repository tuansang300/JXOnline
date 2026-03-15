--description: 襄阳城衙门秘道敌人
--author: yuanlan	
--date: 2003/5/17


Include("wdenemy06_Default.lua")
Include("wdenemy06_UTask_62.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 62) then	
	wdenemy06_UTask_62()					
else
	wdenemy06_Default()
end;
	
end;	


