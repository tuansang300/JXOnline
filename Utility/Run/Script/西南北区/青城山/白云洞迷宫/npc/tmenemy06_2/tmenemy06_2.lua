--description: 唐门30级任务 青城山白云洞怪物
--author: yuanlan	
--date: 2003/3/11


Include("tmenemy06_2_Default.lua")
Include("tmenemy06_2_UTask_33.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 33) then	
	tmenemy06_2_UTask_33()	
else
	tmenemy06_2_Default()
end;
	
end;	




