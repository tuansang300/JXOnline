--description: 中原北区 汴京府 铁匠1对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then

	UTask_trsub04 = GetTask(24)
	
	if (UTask_trsub04 == 0) then 
		Say("曲铁匠：我今年三十了，还没有娶上媳妇，唉，为什么没有人喜欢我呢？不瞒你说，其实我挺喜欢城东的张寡妇，但是我一直不敢向她表白，我怕她讨厌我。", 2, "我替你问问她的心意/accept", "不关我事/refuse")
		DelItem("断剑“掩日”")
		DelItem("银簪")				
		DelItem("香囊")						--处理重接任务后，玩家捡起任务道具的情况
	return
	end
	
	if (UTask_trsub04 == 2) then 
		Say("曲铁匠：太麻烦你了，银簪替我送到了吗？", 0)
	return
	end

	if (UTask_trsub04 == 4) then 
		if ( HaveItem("香囊") == 1 ) then
			Talk(2, "", "玩家：其实张寡妇对你也有好感，这是她回送给你的香囊。", "曲铁匠：太谢谢你了，如果没有你，我们不知要等多久才能明白对方的心意。我有一把断剑，虽然不值什么钱，但却是我们家祖传的，就送给你作为谢礼吧。")
			DelItem("香囊")
			AddEventItem("断剑“掩日”")
			Msg2Player("得到断剑“掩日”。")
			SetTask(24, 10)
			if (HaveItem("断剑“断水”") == 1 and HaveItem("断剑“转魄”") == 1 and HaveItem("断剑“去邪”") == 1 and HaveItem("断剑“灭魂”") == 1) then 		
				SetTask(4, 65)
			end
		else						--丢失处理
			Say("系统：真糟糕！你不小心把香囊弄丢了。", 2, "我再找找/find", "重新做这个子任务/redo")	
		end
	return
	end
	
	if (UTask_trsub04 == 10) then 				
		Say("曲铁匠：多谢你撮合我和张寡妇的姻缘，要不要看看我这儿的兵刃？", 2, "交易/yes", "不交易/no")
	end	

return
end;

Say("曲铁匠：以前我这铁匠铺的生意可红火了，多少名士侠客都到我这儿定制兵刃，现如今……不说也罢！要不要看看我这儿的兵刃？", 2, "交易/yes", "不交易/no");

end;


function accept()
Say("曲铁匠：那太麻烦你了，这根银簪是我亲手打制的，你帮我送给她，如果她接受，就表明她的心里也有我。", 0);
AddEventItem("银簪");
Msg2Player("得到一支银簪。");
SetTask(24, 2);	
end;


function refuse()
Say("曲铁匠：要不要看看我这儿的兵刃？", 2, "交易/yes", "不交易/no");
end;


function yes()
Sale(7);  			--弹出交易框
end;


function no()
end;


function find()
end;


function redo()
Say("系统：请重新在汴京城铁匠处接受任务。", 0)
Msg2Player("你已选择重新在汴京城铁匠处接受任务。")
SetTask(24, 0)
end;






