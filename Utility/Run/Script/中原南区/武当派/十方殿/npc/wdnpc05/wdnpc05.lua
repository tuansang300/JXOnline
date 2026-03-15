--description: 武当派徐岱岳
--author: yuanlan	
--date: 2003/5/14


Include("wdnpc05_Default.lua")
Include("wdnpc05_UTask_30.lua")
Include("wdnpc05_UTask_32.lua")
Include("wdnpc05_UTask_35.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 30) then wdnpc05_UTask_30()  return end;					--30级任务
if (UTask_wd == 32) then wdnpc05_UTask_32()  return end;					--30级任务
if (UTask_wd == 35) then wdnpc05_UTask_35()  return end;					--30级任务

wdnpc05_Default()

end;	


