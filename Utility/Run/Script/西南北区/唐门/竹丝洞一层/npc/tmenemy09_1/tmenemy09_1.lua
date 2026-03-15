--description: 唐门出师任务 竹丝洞第一层怪物
--author: yuanlan	
--date: 2003/3/13


Include("tmenemy09_1_Default.lua")
Include("tmenemy09_1_UTask_62.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 62) then	
	tmenemy09_1_UTask_62()	
else
	tmenemy09_1_Default()
end;
	
end;	




