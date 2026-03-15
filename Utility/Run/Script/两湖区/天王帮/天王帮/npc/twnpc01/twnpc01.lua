--description: 天王帮众
--author: yuanlan	
--date: 2003/4/24


Include("twnpc01_Default.lua")
Include("twnpc01_UTask_0.lua")
Include("twnpc01_UTask_8.lua")

function main()

UTask_tw = GetTask(3);

if (UTask_tw == 0) then	 twnpc01_UTask_0()  return end;					--入门任务
if (UTask_tw == 8) then	 twnpc01_UTask_8()  return end;					--入门任务

twnpc01_Default()

end;	


