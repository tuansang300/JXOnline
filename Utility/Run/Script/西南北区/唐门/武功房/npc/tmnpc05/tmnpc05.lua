--description: 唐门唐鹤 10级任务 
--author: yuanlan	
--date: 2003/3/10


Include("tmnpc05_Default.lua")
Include("tmnpc05_UTask_10.lua")
Include("tmnpc05_UTask_18.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 10) then tmnpc05_UTask_10() return end;				--10级任务
if (UTask_tm == 18) then tmnpc05_UTask_18() return end;				--10级任务
	   	
tmnpc05_Default()
	   	
end;	




