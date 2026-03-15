--description: 峨嵋派妙隐 
--author: yuanlan	
--date: 2003/3/4


Include("emnpc07_Default.lua")
Include("emnpc07_UTask_10.lua")
Include("emnpc07_UTask_16.lua")
Include("emnpc07_UTask_18.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 10) then emnpc07_UTask_10() return end;					--接到10级任务
if (UTask_em == 16) then emnpc07_UTask_16() return end;					--10级任务过程中
if (UTask_em == 18) then emnpc07_UTask_18() return end;					--10级任务过程中

emnpc07_Default();
	
end;	


