--description: 唐门50级任务 青城山响水洞怪物
--author: yuanlan	
--date: 2003/3/12


Include("tmenemy08_2_Default.lua")
Include("tmenemy08_2_UTask_58.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 58) then	
	tmenemy08_2_UTask_58()	
else
	tmenemy08_2_Default()
end;
	
end;	




