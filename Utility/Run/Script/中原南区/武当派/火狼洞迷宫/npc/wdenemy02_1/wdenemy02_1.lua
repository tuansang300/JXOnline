--description: Œ‰µ±…Ω ª¿«∂¥√‘π¨µ–»À
--author: yuanlan	
--date: 2003/5/14


Include("wdenemy02_1_Default.lua")
Include("wdenemy02_1_UTask_22.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 22) then	
	wdenemy02_1_UTask_22()					
else
	wdenemy02_1_Default()
end;
	
end;	


