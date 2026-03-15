--description: 武当派40级任务 伏牛山鸡冠洞五只白玉虎
--author: yuanlan	
--date: 2003/5/15


Include("wdenemy04_4_Default.lua")
Include("wdenemy04_4_UTask_42.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 42) then	
	wdenemy04_4_UTask_42()	
else
	wdenemy04_4_Default()
end;
	
end;	




