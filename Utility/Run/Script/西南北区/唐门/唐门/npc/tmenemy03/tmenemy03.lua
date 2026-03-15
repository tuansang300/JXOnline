--description: 唐门竹海第三关敌人
--author: yuanlan	
--date: 2003/3/10


Include("tmenemy03_Default.lua")
Include("tmenemy03_UTask_6.lua")


function OnDeath()

UTask_tm = GetTask(2);

if (UTask_tm == 6) then	
	tmenemy03_UTask_6()					
else
	tmenemy03_Default()
end;
	
end;	


