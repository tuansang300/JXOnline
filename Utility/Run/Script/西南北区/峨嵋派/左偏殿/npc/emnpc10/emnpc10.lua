--description: 峨嵋派苏词馨 
--author: yuanlan	
--date: 2003/3/5


Include("emnpc10_Default.lua")
Include("emnpc10_UTask_40.lua")
Include("emnpc10_UTask_48.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 40) then emnpc10_UTask_40() return end;					--接到40级任务
if (UTask_em == 48) then emnpc10_UTask_48() return end;					--40级任务过程中

emnpc10_Default();
	
end;	


