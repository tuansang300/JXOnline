--description: 武当派润娘
--author: yuanlan	
--date: 2003/5/15


Include("wdnpc07_Default.lua")
Include("wdnpc07_UTask_42.lua")
Include("wdnpc07_UTask_45.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 42) then wdnpc07_UTask_42() return end;				--40级任务

wdnpc07_Default()
	   	
end;	




