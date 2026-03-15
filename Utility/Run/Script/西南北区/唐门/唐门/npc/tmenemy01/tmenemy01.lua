--description: 唐门竹海第一关敌人
--author: yuanlan	
--date: 2003/3/10


Include("tmenemy01_Default.lua")
Include("tmenemy01_UTask_2.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 2) then	
	tmenemy01_UTask_2()					
else
	tmenemy01_Default()
end;
	
end;	


