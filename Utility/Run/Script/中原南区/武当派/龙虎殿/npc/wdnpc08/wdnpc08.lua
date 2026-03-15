--description: 武当派单思南
--author: yuanlan	
--date: 2003/5/16


Include("wdnpc08_Default.lua")
Include("wdnpc08_UTask_50.lua")
Include("wdnpc08_UTask_58.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 50) then wdnpc08_UTask_50()  return end;					--50级任务
if (UTask_wd == 58) then wdnpc08_UTask_58()  return end;					--50级任务

wdnpc08_Default()

end;	


