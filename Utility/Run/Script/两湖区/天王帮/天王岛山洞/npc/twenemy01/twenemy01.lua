--description: 天王帮 天王岛山洞敌人
--author: yuanlan	
--date: 2003/4/24


Include("twenemy01_Default.lua")
Include("twenemy01_UTask_12.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 12) then	
	twenemy01_UTask_12()					
else
	twenemy01_Default()
end;
	
end;	


