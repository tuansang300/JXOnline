--两湖区 巴陵县 木桩死亡 新手村练级任务(不可重复的任务)


function OnDeath()

UTask_world05 = GetTask(33);

if (UTask_world05 == 2) then	
	Task0028 = GetTaskTemp(28)
	Task0028 = Task0028 + 1	
	SetTaskTemp(28, Task0028)
end;					

end;

