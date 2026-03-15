--两湖区 巴陵县 峨嵋锦衣尼对话

function main(sel)

if (GetFaction() ~= "") then						--如果玩家已经属于某一门派
	if (GetFaction() == "峨嵋派") then				
		Say("峨嵋锦衣尼：小师妹，你下山来有什么事吗？", 0)
	end
	if (GetFaction() == "翠烟门") then				
		Say("峨嵋锦衣尼：贵派偏处云南，与本派从无来往，不知有何指教？", 0)
	end
	if (GetFaction() == "唐门") then				
		Say("峨嵋锦衣尼：你是蜀南唐门的人吗？本门乃是名门正派，从不与旁门左道之人交往。", 0)
	end
	if (GetFaction() == "五毒教") then				
		Say("峨嵋锦衣尼：武林的邪魔歪道，人人得而诛之！", 0)
	end
	if (GetFaction() == "天王帮") then				
		Say("峨嵋锦衣尼：贵帮帮主杨瑛乃是一位女中豪杰，贫尼素来仰慕，可惜一直缘悭一面。", 0)
	end
	if (GetFaction() == "少林派") then				
		Say("峨嵋锦衣尼：阿弥陀佛！原来是少林派的师兄，不知玄因大师近来是否康健？", 0)
	end
	if (GetFaction() == "武当派") then				
		Say("峨嵋锦衣尼：武当侠义，名满天下，贵派道一真人和本派掌门交情不浅，咱们两派可称得上是同气连枝啊！", 0)
	end
	if (GetFaction() == "昆仑派") then				
		Say("峨嵋锦衣尼：敝派与贵派素无往来，不知有何指教？", 0)
	end
	if (GetFaction() == "天忍教") then				
		Say("峨嵋锦衣尼：贵教一直居心叵测，依附金国，对我大宋江山图谋不轨，我们正派武林与你们誓不两立！", 0)
	end
	if (GetFaction() == "丐帮") then				
		Say("峨嵋锦衣尼：贵帮人多势大，豪气冲天，本派很愿意结交你们这些朋友！", 0)
	end
else	
	UTask_em = GetTask(1)
	if (UTask_em == 0) then						--未入过峨嵋派
		Say("峨嵋锦衣尼：天下女子所创的门派中，以本派为第一。本派弟子均为女子，不仅武功高强，而且多才多艺，琴棋书画无所不精。有人说江湖是男人的世界，但是本派却能够与少林武当鼎立，因此武林中人无不敬本门弟子三分。本派只收女弟子。你想加入本派吗？", 2, "加入/yes", "不加入/no")
	return	
	end
	if (UTask_em == 70) then					--峨嵋派出师
		Say("峨嵋锦衣尼：原来是以前的师姐，不知近来可好？", 0)
	return	
	end
	Say("峨嵋锦衣尼：你已经在峨眉山叶冰痕师姐处接了本派的入门任务，但是尚未完成，你必须先通过茶琴书的考验，然后再闯钻天坡得到白玉如意。", 0)
end;

end;


function yes()
if (GetSeries() ~= 2) then							--如果玩家不属于水系
	Say("峨嵋锦衣尼：本派武功以阴柔为主，你的根基不适合修练。", 0)
else
	if (GetLevel() >= 10) then						--等级达到十级
		if ( GetSex() == 0 ) then     					--如果玩家性别为男
			Say("峨嵋锦衣尼：本门只收女弟子。", 0)
		else								--玩家性别为女
			Say("峨嵋锦衣尼：加入本派后，大家都是好姊妹，从今以后要相亲相爱，处处以本派利益为重，将本派发扬光大。", 2, "进入峨嵋派/go", "我再想想/no")  
		end
	else
		Say("峨嵋锦衣尼：你的根基尚未打好，尚需一段时日的磨练，不要操之过急。先去野外练一练，到了<color=Red>十级<color>再来找我吧。", 0)		
	end
end;			
end;

function no()
end;


function go()
NewWorld(13, 1898, 4978)			--把玩家传送到门派入口
--SetFightState(1)				--玩家进入非战斗区域，取消战斗状态转换	
SetRevPos(13,13)		  			--设置重生点
SetTask(1, 10)
SetFaction("峨嵋派")       			--玩家加入峨嵋派
SetCamp(1)
SetCurCamp(1)
AddMagic(80)
SetRank(13)
Msg2Player("欢迎你加入峨嵋派，成为布衣尼！")
Msg2Player("学会武功“飘雪穿云”。")
end;
