--description: 神农架 燕子洞敌人
--author: yuanlan	
--date: 2003/4/25


Include("twenemy03_Default.lua")
Include("twenemy03_UTask_32.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 32) then	
	twenemy03_UTask_32()					
else
	twenemy03_Default()
end;
	
end;	


