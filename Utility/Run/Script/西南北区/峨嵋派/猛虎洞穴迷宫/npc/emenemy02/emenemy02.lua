--description: ∂Î·“≈…√Õª¢∂¥—®µ–»À
--author: yuanlan	
--date: 2003/3/4


Include("emenemy02_Default.lua")
Include("emenemy02_UTask_25.lua")


function OnDeath()

UTask_em = GetTask(1);

if (UTask_em == 25) then	
	emenemy02_UTask_25()					
else
	emenemy02_Default()
end;
	
end;	


