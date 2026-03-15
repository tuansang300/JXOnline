--两湖区 巴陵县 沙袋死亡 新手村练级任务(不可重复的任务)


function OnDeath()

UTask_world05 = GetTask(33);

if (UTask_world05 == 4) then	
	Task0029 = GetTaskTemp(29)
	Task0029 = Task0029 + 1	
	SetTaskTemp(29, Task0029)
end;					

end;