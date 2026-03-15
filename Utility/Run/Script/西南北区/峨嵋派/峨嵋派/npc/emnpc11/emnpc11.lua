--description: 峨嵋派妙隐相公
--author: yuanlan	
--date: 2003/3/4


Include("emnpc11_Default.lua")
Include("emnpc11_UTask_12.lua")
Include("emnpc11_UTask_17.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 12) then emnpc11_UTask_12() return end;					--接到10级任务
if (UTask_em == 17) then emnpc11_UTask_17() return end;					--10级任务过程中

emnpc11_Default();
	
end;	


