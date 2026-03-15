--两湖区 巴陵县 木人死亡 新手村练级任务(不可重复的任务)


function OnDeath()

UTask_world05 = GetTask(33);

if (UTask_world05 == 6) then	
	Task0030 = GetTaskTemp(30)
	Task0030 = Task0030 + 1	
	SetTaskTemp(30, Task0030)
end;					

end;

