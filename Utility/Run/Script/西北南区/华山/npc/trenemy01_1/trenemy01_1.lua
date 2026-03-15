--description: »ªÉ½µÐÈË
--author: yuanlan	
--date: 2003/5/17


Include("trenemy01_1_Default.lua")
Include("trenemy01_1_UTask_5.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 5) then	
	trenemy01_1_UTask_5()					
else
	trenemy01_1_Default()
end;
	
end;	


