--description: 唐门江津村唐元 50级任务 
--author: yuanlan	
--date: 2003/3/12


Include("tmnpc13_Default.lua")
Include("tmnpc13_UTask_54.lua")


function main()

UTask_tm = GetTask(2);

if (UTask_tm == 54) then  				--50级任务
	tmnpc13_UTask_54()
else		   	
	tmnpc13_Default()
end	
	   	
end;	




