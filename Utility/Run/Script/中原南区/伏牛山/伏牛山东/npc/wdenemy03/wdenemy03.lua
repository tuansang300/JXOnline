--description: ·üÅ£É½¶«µÐÈË
--author: yuanlan	
--date: 2003/5/15


Include("wdenemy03_Default.lua")
Include("wdenemy03_UTask_32.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 32) then	
	wdenemy03_UTask_32()					
else
	wdenemy03_Default()
end;
	
end;	


