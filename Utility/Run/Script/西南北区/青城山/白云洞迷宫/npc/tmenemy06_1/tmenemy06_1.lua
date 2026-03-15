--description: 唐门30级任务 青城山白云洞绑匪
--author: yuanlan	
--date: 2003/3/11


Include("tmenemy06_1_Default.lua")
Include("tmenemy06_1_UTask_32.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 32) then 
	tmenemy06_1_UTask_32()	
else
	tmenemy06_1_Default()
end;
	
end;	




