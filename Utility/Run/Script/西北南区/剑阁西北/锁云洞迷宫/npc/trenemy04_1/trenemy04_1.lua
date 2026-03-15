--description: ½£¸óÊñµÀËøÔÆ¶´µĞÈË
--author: yuanlan	
--date: 2003/5/19


Include("trenemy04_1_Default.lua")
Include("trenemy04_1_UTask_42.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 42) then	
	trenemy04_1_UTask_42()					
else
	trenemy04_1_Default()
end;
	
end;	


