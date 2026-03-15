--description: 神农架地表黑叶猴 世界任务
--author: yuanlan	
--date: 2003/4/30

Include("worldenemy02_Default.lua")
Include("worldenemy02_UTask_1.lua")


function OnDeath()

UTask_world03 = GetTask(15);

if (UTask_world03 == 1) then
	worldenemy02_UTask_1()					
else
	worldenemy02_Default()
end;
	
end;	
