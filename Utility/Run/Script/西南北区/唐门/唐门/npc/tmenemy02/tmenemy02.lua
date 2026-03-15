--description: 唐门竹海第二关敌人
--author: yuanlan	
--date: 2003/3/10


Include("tmenemy02_Default.lua")
Include("tmenemy02_UTask_2.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 2) then	
	tmenemy02_UTask_2()					
else
	tmenemy02_Default()
end;
	
end;	


