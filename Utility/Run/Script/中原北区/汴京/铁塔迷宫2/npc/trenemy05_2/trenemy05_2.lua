--description: 汴京府铁塔二层敌人
--author: yuanlan	
--date: 2003/5/19


Include("trenemy05_2_Default.lua")
Include("trenemy05_2_UTask_52.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 52) then	
	trenemy05_2_UTask_52()					
else
	trenemy05_2_Default()
end;
	
end;	


