--description: 唐门50级任务 青城山响水洞唐禾
--author: yuanlan	
--date: 2003/3/12


Include("tmenemy08_1_Default.lua")
Include("tmenemy08_1_UTask_56.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 56) then	
	tmenemy08_1_UTask_56()	
else
	tmenemy08_1_Default()
end;
	
end;	




