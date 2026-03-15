--description: ÎäÁêÉ½ ·üÁ÷¶´µĞÈË
--author: yuanlan	
--date: 2003/4/26


Include("twenemy04_Default.lua")
Include("twenemy04_UTask_45.lua")


function OnDeath()

UTask_tw = GetTask(3);

if (UTask_tw == 45) then	
	twenemy04_UTask_45()					
else
	twenemy04_Default()
end;
	
end;	


