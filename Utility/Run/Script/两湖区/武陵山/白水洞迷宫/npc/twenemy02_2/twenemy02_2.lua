--description: Œ‰¡Í…Ω ∞◊ÀÆ∂¥µ–»À
--author: yuanlan	
--date: 2003/4/25


Include("twenemy02_2_Default.lua")
Include("twenemy02_2_UTask_25.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 25) then	
	twenemy02_2_UTask_25()					
else
	twenemy02_2_Default()
end;
	
end;	


