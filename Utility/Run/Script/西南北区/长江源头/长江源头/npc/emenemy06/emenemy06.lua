--description: 峨嵋派长江源头清和
--author: yuanlan	
--date: 2003/3/6


Include("emenemy06_Default.lua")
Include("emenemy06_UTask_65.lua")


function OnDeath()

UTask_em = GetTask(1);

if (UTask_em == 65) then	
	emenemy06_UTask_65()					
else
	emenemy06_Default()
end;
	
end;	


