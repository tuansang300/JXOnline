--description: 武当派40级任务 伏牛山鸡冠洞普通怪物
--author: yuanlan	
--date: 2003/5/15


Include("wdenemy04_6_Default.lua")
Include("wdenemy04_6_UTask_45.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 45) then	
	wdenemy04_6_UTask_45()					
else
	wdenemy04_6_Default()
end;
	
end;	


