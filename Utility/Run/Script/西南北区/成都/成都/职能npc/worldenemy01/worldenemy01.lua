--description: 成都野外野猪 世界任务
--author: yuanlan	
--date: 2003/4/1

Include("worldenemy01_Default.lua")
Include("worldenemy01_UTask_1.lua")


function OnDeath()

UTask_world01 = GetTask(11);

if (UTask_world01 == 1) then	
	worldenemy01_UTask_1()					
else
	worldenemy01_Default()
end;
	
end;	
