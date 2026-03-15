--description: 唐门唐野 40级任务 
--author: yuanlan	
--date: 2003/3/12


Include("tmnpc10_Default.lua")
Include("tmnpc10_UTask_40.lua")
Include("tmnpc10_UTask_44.lua")
Include("tmnpc10_UTask_48.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 40) then tmnpc10_UTask_40() return end;				--40级任务
if (UTask_tm == 44) then tmnpc10_UTask_44() return end;				--40级任务
if (UTask_tm == 48) then tmnpc10_UTask_48() return end;				--40级任务
	   	
tmnpc10_Default()
	   	
end;	




