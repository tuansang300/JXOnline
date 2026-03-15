--description: ∆ﬂ…±∂¥µ–»À
--author: yuanlan	
--date: 2003/5/18


Include("trenemy02_5_Default.lua")
Include("trenemy02_5_UTask_15.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 15) then	
	trenemy02_5_UTask_15()					
else
	trenemy02_5_Default()
end;
	
end;	


