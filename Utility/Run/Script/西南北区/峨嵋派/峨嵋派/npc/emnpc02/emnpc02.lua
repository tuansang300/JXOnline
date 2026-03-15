--description: 峨嵋派叶冰痕
--author: yuanlan	
--date: 2003/3/3


Include("emnpc02_Default.lua")
Include("emnpc02_UTask_enroll.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 0) then	
	emnpc02_UTask_enroll()					--入门任务
else
	emnpc02_Default()
end;	
	
end;	


