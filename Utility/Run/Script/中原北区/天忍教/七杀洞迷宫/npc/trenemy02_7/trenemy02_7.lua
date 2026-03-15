--description: ∆ﬂ…±∂¥µ–»À
--author: yuanlan	
--date: 2003/5/18


Include("trenemy02_7_Default.lua")
Include("trenemy02_7_UTask_15.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 15) then	
	trenemy02_7_UTask_15()					
else
	trenemy02_7_Default()
end;
	
end;	


