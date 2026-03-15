--description: 天忍教圣洞二层敌人 
--author: yuanlan	
--date: 2003/5/20


Include("trenemy06_5_Default.lua")
Include("trenemy06_5_UTask_67.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 67) then	
	trenemy06_5_UTask_67()	
else
	trenemy06_5_Default()
end;
	
end;	




