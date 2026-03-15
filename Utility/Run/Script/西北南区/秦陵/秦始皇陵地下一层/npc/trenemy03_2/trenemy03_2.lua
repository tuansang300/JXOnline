--description: 秦陵地下一层敌人
--author: yuanlan	
--date: 2003/5/19


Include("trenemy03_2_Default.lua")
Include("trenemy03_2_UTask_32.lua")

function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 32) then trenemy03_2_UTask_32()  return end;					--30级任务

trenemy03_2_Default()

end;	


