--西南北区 江津村 武当道人对话


function main(sel)

if (GetFaction() ~= "") then						--如果玩家已经属于某一门派
	if (GetFaction() == "峨嵋派") then				
		Say("武当道人：峨嵋女侠，小道这厢有礼了。令师清晓师太身体可好？", 0)
	end
	if (GetFaction() == "翠烟门") then				
		Say("武当道人：翠烟门的功夫小道是很佩服的，不知姑娘有何指教？。", 0)
	end
	if (GetFaction() == "唐门") then				
		Say("武当道人：贵派掌门虽然性格偏激、行事不循常理，但是为人耿直坦荡，倒也不失为一个真君子。", 0)
	end
	if (GetFaction() == "五毒教") then				
		Say("武当道人：使蛊下毒的本领再高超，也终究是末流之计，登不了大雅之堂。", 0)
	end
	if (GetFaction() == "天王帮") then				
		Say("武当道人：早就听说天王帮的兄弟们个个都是好汉，今日一见，果然是顶天立地的好男儿！", 0)
	end
	if (GetFaction() == "少林派") then				
		Say("武当道人：原来是少林派的小师父，不知有何指教？", 0)
	end
	if (GetFaction() == "武当派") then				
		Say("武当道人：我十分挂念师父，他老人家近来身体可好？", 0)
	end
	if (GetFaction() == "昆仑派") then				
		Say("武当道人：原来是昆仑派的朋友，不知远道而来，有何指教？", 0)
	end
	if (GetFaction() == "天忍教") then				
		Say("武当道人：虽然是各为其主，但是金人虏我河山，欺我百姓，身为大宋子民，本派上下一定会力抗到底！", 0)
	end
	if (GetFaction() == "丐帮") then				
		Say("武当道人：贵帮的何帮主与敝派掌门乃是忘年之交，贵帮有什么事，敝派一定会鼎立相助。", 0)
	end
else	
	UTask_wd = GetTask(5)
	if (UTask_wd == 0) then						--未入过武当派
		Talk(3, "select", "武当道人：天下武学，北宗少林，南崇武当，你想必听说过吧？", "本派武功讲究以静制动，以柔克刚，以短胜长，以慢击快、以意运气，以气运身，后发制人。冲虚恬淡，以无为胜有为，以无形胜有形，方是武学最高的境界。", "本派武功有“五不传”，即柔骨质脆、心险、好斗、狂酒、轻露者，不传。")
	return	
	end
	if (UTask_wd == 70) then					--武当派出师
		Say("武当道人：虽然你已出师下山，但是我们常常惦念你，你这一向可好？", 0)
	return	
	end
	Say("武当道人：你已经在武当山小道童清风处接了本派的入门任务，但是尚未完成，你需要为他找回掉落在井里的木桶。", 0)
end;

end;


function select()
Say("武当道人：你想加入本派吗？", 2, "加入/yes", "不加入/no");
end;


function yes()
if (GetSeries() ~= 4) then							--如果玩家不属于土系
	Say("武当道人：武功需要后天修为，但是先天本性也很重要，天性恬淡冲和之人，学习本派武功才能有所大成。你最好仔细考虑一下，看看自己到底应该如何发展。", 0)
else
	if (GetLevel() >= 10) then					--等级达到十级
		Say("武当道人：加入本派之后要收敛心性，专心修行，日后会有很多机会等着你，望你能善加对待。", 2, "进入武当派/go", "我再想想/no")			 
	else
		Say("武当道人：学武之道，欲速则不达。你初入江湖，还是先好好历练历练吧！到了<color=Red>十级<color>以后再来找我", 0)
	end			
end
end;	

function no()
end;


function go()
NewWorld(81, 1574, 3224)				--把玩家传送到门派入口
--SetFightState(1)					--玩家进入非战斗区域，取消战斗状态转换
SetRevPos(81,40)	 					--设置重生点
SetTask(5, 10)
SetFaction("武当派")      				--玩家加入武当
SetCamp(1)
SetCurCamp(1)
AddMagic(153)
SetRank(7)
Msg2Player("欢迎你加入武当派，先从道童做起吧！")
Msg2Player("学会武当派武功“怒雷指”。")
end;