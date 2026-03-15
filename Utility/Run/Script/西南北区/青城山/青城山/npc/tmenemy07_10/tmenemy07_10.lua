--description: 唐门40级任务 青城山普通怪物
--author: yuanlan	
--date: 2003/3/12


Include("tmenemy07_10_Default.lua")
Include("tmenemy07_10_UTask_46.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 46) then	
	tmenemy07_10_UTask_46()	
else
	tmenemy07_10_Default()
end;
	
end;	




