--description: 武当派周云泉
--author: yuanlan	
--date: 2003/5/15


Include("wdnpc06_Default.lua")
Include("wdnpc06_UTask_40.lua")
Include("wdnpc06_UTask_48.lua")

function main()

UTask_wd = GetTask(5);

if (UTask_wd == 40) then wdnpc06_UTask_40()  return end;					--40级任务
if (UTask_wd == 48) then wdnpc06_UTask_48()  return end;					--40级任务

wdnpc06_Default()

end;	


