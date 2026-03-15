--西南北区 江津村 沙袋死亡 新手村练级任务(不可重复的任务)


function OnDeath()

UTask_world04 = GetTask(32);

if (UTask_world04 == 4) then	
	Task0026 = GetTaskTemp(26)
	Task0026 = Task0026 + 1	
	SetTaskTemp(26, Task0026)
end;					

end;