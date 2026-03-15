--description: 天王帮水生
--author: yuanlan	
--date: 2003/4/28


Include("twnpc07_Default.lua")
Include("twnpc07_UTask_45.lua")

function main()

UTask_tw = GetTask(3);
if (UTask_tw == 45) then 		--40级任务
	twnpc07_UTask_45()					
else
	twnpc07_Default()
end;	

end;	


