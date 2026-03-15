--description: 伏牛山 天心洞迷宫敌人
--author: yuanlan	
--date: 2003/5/16


Include("wdenemy05_Default.lua")
Include("wdenemy05_UTask_52.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 52) then	
	wdenemy05_UTask_52()					
else
	wdenemy05_Default()
end;
	
end;	


