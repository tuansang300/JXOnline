--description: 汴京府铁塔三层敌人
--author: yuanlan	
--date: 2003/5/19


Include("trenemy05_3_Default.lua")
Include("trenemy05_3_UTask_52.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 52) then	
	trenemy05_3_UTask_52()					
else
	trenemy05_3_Default()
end;
	
end;	


