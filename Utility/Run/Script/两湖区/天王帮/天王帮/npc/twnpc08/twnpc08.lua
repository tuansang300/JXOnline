--description: 天王帮老渔翁
--author: yuanlan	
--date: 2003/4/28


Include("twnpc08_Default.lua")
Include("twnpc08_UTask_45.lua")

function main()

UTask_tw = GetTask(3);
if (UTask_tw == 45) then 		--40级任务
	twnpc08_UTask_45()					
else
	twnpc08_Default()
end;	

end;	


