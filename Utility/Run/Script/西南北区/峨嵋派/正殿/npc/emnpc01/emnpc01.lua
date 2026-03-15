--description: 峨嵋派清晓师太
--author: yuanlan	
--date: 2003/3/6


Include("emnpc01_Default.lua")
Include("emnpc01_UTask_enroll.lua")
Include("emnpc01_UTask_50.lua")
Include("emnpc01_UTask_58.lua")
Include("emnpc01_UTask_graduate.lua")
Include("emnpc01_UTask_68.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 8) then	 emnpc01_UTask_enroll()	return end;				--入门任务
if (UTask_em == 50) then emnpc01_UTask_50() return end;				--50级任务
if (UTask_em == 58) then emnpc01_UTask_58() return end;				--50级任务
if (UTask_em == 60) then emnpc01_UTask_graduate() return end;				--出师任务
if (UTask_em == 68) then emnpc01_UTask_68() return end;				--出师任务
	   	
emnpc01_Default()
	   	
end;	


