--description: 两湖区 巴陵县 酒店老板对话 
--author: yuanlan	
--date: 2003/4/24


function main(sel)

UTask_tw = GetTask(3);

if (UTask_tw == 2) then 							--天王帮入门任务
Talk(4, "", "玩家：老板，你这里什么酒最好？", "酒店老板：本地最好的酒非<color=Red>“蓬莱春”<color>莫属，只是酿造这种酒很费功夫，而且原料也很难找，所以价钱不便宜。", "玩家：只要酒好就行，我想买一坛，要多少银子？", "酒店老板：银子再多也没用，本店已经很久没有酿造这种酒了，因为缺少原料<color=Red>灵芝<color>、<color=Red>玄参<color>和<color=Red>何首乌<color>。如果你能弄到这三种原料，我就帮你酿制一坛。听说这三种药材生长在<color=Red>武陵山的东北部<color>，只不过那里有很多吃人的怪兽，所以没人敢去送死。")
SetTask(3, 4)
return
end;		


if (UTask_tw == 4) then 
	if ( HaveItem("灵芝") == 0  or  HaveItem("玄参") == 0  or  HaveItem("何首乌") == 0 ) then	--没有找齐三样原料
		Say("酒店老板：只要你找到<color=Red>灵芝<color>、<color=Red>玄参<color>和<color=Red>何首乌<color>，我就帮你酿造一坛<color=Red>蓬莱春<color>。听说这三种药材生长在<color=Red>武陵山的东北部<color>，只不过那里有很多吃人的怪兽，所以没人敢去送死。", 0)			
	else												--找齐三样东西
		Talk(2, "", "玩家：老板，我已经找齐了所需的三种原料，请你为我酿制'蓬莱春'吧。", "酒店老板：好，不过你要等一个时辰再来拿。") 
		DelItem("灵芝") 
		DelItem("玄参") 
		DelItem("何首乌") 
		SetTask(3, 6)
		SetTimer(14400, 1)									--开启计时器
	end	
return	
end;		


if (UTask_tw == 6) then 
	UTask_twsub01 = GetTask(13);
	if (UTask_twsub01 == 1) then 									--时间还没到	
		AddEventItem("蓬莱春")
		Msg2Player("得到美酒“蓬莱春”一坛。")
		SetTask(3, 8)
	else
		Say("酒店老板：时间未到，酒还没有酿好，你还要等："..GetRestTime(), 0)		
	end
return	
end;


Say("酒店老板：我们这儿是著名的鱼米之乡，河产丰富，客官要吃点什么鲜货？喝点什么酒？",0);


end;






	
