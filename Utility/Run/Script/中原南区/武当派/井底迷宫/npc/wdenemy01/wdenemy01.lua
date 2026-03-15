--description: Îäµ±É½ ¾®µ×ÃÔ¹¬µĞÈË
--author: yuanlan	
--date: 2003/5/14


Include("wdenemy01_Default.lua")
Include("wdenemy01_UTask_5.lua")


function OnDeath()

UTask_wd = GetTask(5);

if (UTask_wd == 5) then	
	wdenemy01_UTask_5()					
else
	wdenemy01_Default()
end;
	
end;	


