--description: 武当派道一真人
--author: yuanlan	
--date: 2003/5/14


Include("wdnpc02_Default.lua")
Include("wdnpc02_UTask_10.lua")
Include("wdnpc02_UTask_15.lua")
Include("wdnpc02_UTask_48.lua")
Include("wdnpc02_UTask_60.lua")
Include("wdnpc02_UTask_65.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 10) then wdnpc02_UTask_10()  return end;					--10级任务
if (UTask_wd == 15) then wdnpc02_UTask_15()  return end;					--10级任务
if (UTask_wd == 48) then wdnpc02_UTask_48()  return end;					--40级任务
if (UTask_wd == 60) then wdnpc02_UTask_60()  return end;					--出师任务
if (UTask_wd == 65) then wdnpc02_UTask_65()  return end;					--出师任务

wdnpc02_Default()

end;	


