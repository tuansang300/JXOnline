--description: Œ‰µ±…Ω ª¿«∂¥√‘π¨µ–»À
--author: yuanlan	
--date: 2003/5/14


Include("wdenemy02_2_Default.lua")
Include("wdenemy02_2_UTask_25.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 25) then	
	wdenemy02_2_UTask_25()					
else
	wdenemy02_2_Default()
end;
	
end;	


