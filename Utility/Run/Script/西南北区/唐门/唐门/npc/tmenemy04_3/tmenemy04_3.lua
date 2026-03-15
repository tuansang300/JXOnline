--description: 唐门怪石阵敌人3 20级任务
--author: yuanlan	
--date: 2003/3/11


Include("tmenemy04_3_Default.lua")
Include("tmenemy04_3_UTask_23.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 23) then	
	tmenemy04_3_UTask_23()					
else
	tmenemy04_3_Default()
end;
	
end;	


