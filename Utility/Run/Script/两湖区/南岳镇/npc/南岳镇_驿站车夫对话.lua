--两湖区 南岳镇 驿站车夫对话  世界任务

CurStation = 11;
Include("\\Script\\Global\\station.lua");

function main(sel)

	UTask_world03 = GetTask(15);

	if (UTask_world03 == 0) then	
		Say("车夫：唉，现在的生意越来越难做了，原本还有不少富商大爷去神农架那儿游玩，可是最近不知从哪儿窜出一群黑叶猴，沿路打劫客人，搞得我生意大受影响，如果有人能赶走这些黑叶猴就好了，每赶走十只，就可以免费在我这里使用一次车马。您要坐车吗？", 2, "帮忙/yes", "不帮忙/no")
		SetTask(15, 1)
	else
		Say("车夫：咱们车夫做的是气力活，吃的是辛苦饭，您好心帮衬一下吧？", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "回来的地点/TownPortalFun", "不用了/OnCancel");
	end

end;

function yes()
	Task0013 = GetTaskTemp(13);
	if (Task0013 < 10) then			--没有杀到十只黑叶猴
		Say("车夫：咱们车夫做的是气力活，吃的是辛苦饭，您好心帮衬一下吧？", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "回来的地点/TownPortalFun", "不用了/OnCancel");
	else
		SetTaskTemp(13, 0)
		Say("车夫：多谢你帮我赶走了黑叶猴，要去哪里？我免费送你去！", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "回来的地点/TownPortalFun", "不用了/OnCancel")
	end
end;

function  OnCancel()
	Say("车夫：原来你也是个没钱的主儿，算我看走了眼。",0)
end;