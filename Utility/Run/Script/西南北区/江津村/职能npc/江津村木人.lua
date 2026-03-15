--西南北区 江津村 木人死亡 新手村练级任务(不可重复的任务)


function OnDeath()

UTask_world04 = GetTask(32);

if (UTask_world04 == 6) then	
	Task0027 = GetTaskTemp(27)
	Task0027 = Task0027 + 1	
	SetTaskTemp(27, Task0027)
end;					

end;

