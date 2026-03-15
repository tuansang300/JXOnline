--description: 天王帮 洞庭湖底第2层敌人
--author: yuanlan	
--date: 2003/4/28


Include("twenemy05_Default.lua")
Include("twenemy05_UTask_52.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 52) then	
	twenemy05_UTask_52()					
else
	twenemy05_Default()
end;
	
end;	


