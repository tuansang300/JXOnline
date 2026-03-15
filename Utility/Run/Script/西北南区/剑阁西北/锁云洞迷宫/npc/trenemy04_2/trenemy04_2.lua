--description: ½£¸óÊñµÀËøÔÆ¶´µĞÈË
--author: yuanlan	
--date: 2003/5/19


Include("trenemy04_2_Default.lua")
Include("trenemy04_2_UTask_42.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 42) then	
	trenemy04_2_UTask_42()					
else
	trenemy04_2_Default()
end;
	
end;	


