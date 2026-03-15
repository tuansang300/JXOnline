--description: 峨嵋派 青城山神仙洞敌人
--author: yuanlan	
--date: 2003/3/5


Include("emenemy04_Default.lua")
Include("emenemy04_UTask_42.lua")


function OnDeath()

UTask_em = GetTask(1);

if (UTask_em == 42) then	
	emenemy04_UTask_42()					
else
	emenemy04_Default()
end;
	
end;	


