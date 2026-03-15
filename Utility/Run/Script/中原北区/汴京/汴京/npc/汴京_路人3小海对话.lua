--description: 中原北区 汴京府 路人3小海对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then
	UTask_trsub07 = GetTask(27)
	if (UTask_trsub07 == 2) then 
		Talk(2, "", "玩家：小海乖，快点回家去吧，你娘正担心你呢！", "小海：哦，你告诉我娘，我再玩一会儿，很快就回去，叫她别担心。")
		SetTask(27, 4)
	return
	end
	if (UTask_trsub07 >= 4) then 
		Say("小海：我再玩一会儿，很快就回去。", 0)
	return
	end	
end;	
		
Say("小海：我最爱吃唐老爹卖的冰糖葫芦了，可是娘不肯给我买，说吃多了会闹肚子。",0)

end;

