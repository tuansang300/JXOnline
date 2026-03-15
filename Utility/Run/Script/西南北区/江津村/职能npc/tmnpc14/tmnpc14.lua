--description: 唐门江津村唐元舅舅 50级任务 
--author: yuanlan	
--date: 2003/3/12


Include("tmnpc14_Default.lua")
Include("tmnpc14_UTask_54.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 54) then 
	tmnpc14_UTask_54() 				--50级任务
else	   	
	tmnpc14_Default()
end
	   	
end;	




