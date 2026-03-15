--description: 峨嵋派秦倚风
--author: yuanlan	
--date: 2003/3/3


Include("emnpc03_Default.lua")
Include("emnpc03_UTask_enroll.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 2) then	
	emnpc03_UTask_enroll()					--入门任务
else
	emnpc03_Default()
end;	
	
end;	


