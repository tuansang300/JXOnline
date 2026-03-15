--description: 唐门翡翠湖敌人 20级任务
--author: yuanlan	
--date: 2003/3/11


Include("tmenemy05_Default.lua")
Include("tmenemy05_UTask_24.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 24) then	
	tmenemy05_UTask_24()					
else
	tmenemy05_Default()
end;
	
end;	


