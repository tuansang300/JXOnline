--description: 唐门40级任务 青城山五种特色怪物
--author: yuanlan	
--date: 2003/3/12


Include("tmenemy07_2_Default.lua")
Include("tmenemy07_2_UTask_42.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 42) then	
	tmenemy07_2_UTask_42()	
else
	tmenemy07_2_Default()
end;
	
end;	




