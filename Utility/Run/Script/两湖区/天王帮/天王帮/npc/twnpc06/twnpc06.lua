--description: 天王帮渔妇荷嫂
--author: yuanlan	
--date: 2003/4/28


Include("twnpc06_Default.lua")
Include("twnpc06_UTask_45.lua")

function main()

UTask_tw = GetTask(3);
if (UTask_tw == 45) then 		--40级任务
	twnpc06_UTask_45()					
else
	twnpc06_Default()
end;	

end;	


