--description: 唐门唐仇 20级任务、出师任务 
--author: yuanlan	
--date: 2003/3/11


Include("tmnpc07_Default.lua")
Include("tmnpc07_UTask_26.lua")
Include("tmnpc07_UTask_60.lua")
Include("tmnpc07_UTask_68.lua")
Include("tmnpc07_UTask_69.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 26) then tmnpc07_UTask_26() return end;				--20级任务
if (UTask_tm == 60) then tmnpc07_UTask_60() return end;				--出师任务
if (UTask_tm == 68) then tmnpc07_UTask_68() return end;				--出师任务
if (UTask_tm == 69) then tmnpc07_UTask_69() return end;				--出师任务
	   	
tmnpc07_Default()
	   	
end;	




