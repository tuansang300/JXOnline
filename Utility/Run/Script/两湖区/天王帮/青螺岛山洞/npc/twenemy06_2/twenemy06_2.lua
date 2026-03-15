--description: ÇàÂÝµºÉ½¶´µÐÈË
--author: yuanlan	
--date: 2003/4/28


Include("twenemy06_2_Default.lua")
Include("twenemy06_2_UTask_64.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 64) then	
	twenemy06_2_UTask_64()					
else
	twenemy06_2_Default()
end;
	
end;	


