--description: 中原北区 汴京府 路人14冬梅对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19


function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then
	UTask_trsub07 = GetTask(27)
	if (UTask_trsub07 == 0) then 
		Say("冬梅：看见我们家小海了吗？他不知又野到什么地方玩儿去了，你能帮我找找吗？", 2, "好的/accept", "我还有别的事/refuse")
		DelItem("断剑“去邪”")			--处理重接任务后，玩家捡起任务道具的情况	
		return
	end
	
	if (UTask_trsub07 == 2) then 
		Say("冬梅：找到我们家小海了吗？", 0)
		return
	end
	
	if (UTask_trsub07 == 4) then 
		Talk(2, "", "玩家：小海在广场上玩儿呢，过会儿就回来。", "冬梅：太谢谢你了，我家小海长大后要是有你一半懂事就好了！我也没什么别的好东西，这把断剑是我们家用来塞墙缝的，看你是一个习武之人，就送给你吧。")
		AddEventItem("断剑“去邪”")
		Msg2Player("得到断剑“去邪”。")
		SetTask(27, 10)
		if (HaveItem("断剑“掩日”") == 1 and HaveItem("断剑“断水”") == 1 and HaveItem("断剑“转魄”") == 1 and HaveItem("断剑“灭魂”") == 1) then 		
			SetTask(4, 65)
		end	
		return
	end
	
	if (UTask_trsub07 == 10) then 
		Say("冬梅：小海他爹不在家，这孩子又不听话，唉！",0)
	return
	end
		
end;
	
i = random(0,2)

if (i == 0) then
Say("冬梅：看见我们家小海了吗？他不知又野到什么地方玩儿去了。",0)
return
end;

if (i == 1) then
Say("冬梅：小海他爹不在家，里里外外全靠我，偏偏他还不听话！",0)
return
end;

if (i == 2) then
Say("冬梅：现在时局不好，过日子真难啊！",0)
return
end;

end;


function accept()
Say("冬梅：太麻烦你了！", 0);
SetTask(27, 2);	
end;


function refuse()
Say("冬梅：唉！这孩子真让人操心啊！", 0);
end;