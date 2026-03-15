--西南北区 成都府 衙门差役对话 世界任务

function main(sel)

UTask_world01 = GetTask(11);

if (UTask_world01 == 1) then	
	Task0009 = GetTaskTemp(9);
	if (Task0009 < 10) then			--没有杀到十只野猪
		Say("衙门差役：想领赏银吗？先杀死十头野猪再说！", 0)
	else
		Earn(500)
		SetTaskTemp(9, 0)
	end
else
	Say("衙门差役：你娃想闯官衙吗？真是吃了熊心豹子胆！", 0)	
end;
	
end;