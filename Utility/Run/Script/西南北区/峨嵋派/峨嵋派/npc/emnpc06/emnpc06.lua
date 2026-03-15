--description: 峨嵋派妙尘
--author: yuanlan	
--date: 2003/3/4


Include("emnpc06_Default.lua")
Include("emnpc06_UTask_enroll.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 7) then	
	emnpc06_UTask_enroll()					--入门任务
else
	emnpc06_Default()
end;	
	
end;	


