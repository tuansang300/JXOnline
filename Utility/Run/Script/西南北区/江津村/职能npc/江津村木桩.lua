--西南北区 江津村 木桩死亡 新手村练级任务(不可重复的任务)


function OnDeath()

UTask_world04 = GetTask(32);

if (UTask_world04 == 2) then	
	Task0025 = GetTaskTemp(25)
	Task0025 = Task0025 + 1	
	SetTaskTemp(25, Task0025)
end;					

end;

