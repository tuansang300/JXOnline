--description: ÇàÂÝµºµÐÈË
--author: yuanlan	
--date: 2003/4/28


Include("twenemy06_1_Default.lua")
Include("twenemy06_1_UTask_62.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 62) then	
	twenemy06_1_UTask_62()					
else
	twenemy06_1_Default()
end;
	
end;	


