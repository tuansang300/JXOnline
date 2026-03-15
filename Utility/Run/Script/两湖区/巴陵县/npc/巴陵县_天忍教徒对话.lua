--两湖区 巴陵县 天忍死士对话

function main(sel)

if (GetFaction() ~= "") then						--如果玩家已经属于某一门派
	if (GetFaction() == "峨嵋派") then				
		Say("天忍死士：峨嵋派如果能加入本教，整天对着这些天仙般的美人，可真的要乐死了！", 0)
	end
	if (GetFaction() == "翠烟门") then				
		Say("天忍死士：早就听说南国女子妖娆妩媚，如今亲眼一见，果然比我们北国的女子娇嫩。这样一个娇滴滴的美人儿，又何必舞刀弄剑呢？", 0)
	end
	if (GetFaction() == "唐门") then				
		Say("天忍死士：本教教主一直希望贵派能够加入我们这边，荣华富贵、高官厚禄，享用不尽啊！", 0)
	end
	if (GetFaction() == "五毒教") then				
		Say("天忍死士：咱们天忍教和五毒教一北一南，已成合围之势，中原还不迟早是囊中之物？", 0)
	end
	if (GetFaction() == "天王帮") then				
		Say("天忍死士：任何人也阻挡不了本教入主中原的宏图伟业！", 0)
	end
	if (GetFaction() == "少林派") then				
		Say("天忍死士：你们少林派的高手都已渐入老境，年轻后辈中好像没有什么人才，看来也是盛名之下、其实难负呀，哈哈哈哈！", 0)
	end
	if (GetFaction() == "武当派") then				
		Say("天忍死士：早就听说武当派内功剑术天下一流，有机会一定要请教请教！", 0)
	end
	if (GetFaction() == "昆仑派") then				
		Say("天忍死士：你们昆仑派称霸西域，一直就有逐鹿中原的野心，总有一日，本教会与你们在中原一决胜负的！", 0)
	end
	if (GetFaction() == "天忍教") then				
		Say("天忍死士：教里又有什么秘密行动吗？", 0)
	end
	if (GetFaction() == "丐帮") then				
		Say("天忍死士：你这个叫化子想混进来做奸细吗？", 0)
	end
else	
	UTask_tr = GetTask(4)
	if (UTask_tr == 0) then						--未入过天忍教
		Say("天忍死士：本教信奉大金国的国教萨满教，教主乃是国师完颜宏烈，他性情狂傲，智谋过人，就连大金皇帝对他也礼让三分。本教高手无数，招募了大批金宋两国的高手，可谓藏龙卧虎。你想加入本教吗？", 2, "加入/yes", "不加入/no")
	return	
	end
	if (UTask_tr == 70) then					--天忍教出师
		Say("天忍死士：听说你出师以后，竟然混出了点名堂，真是士别三日，当刮目相看啊！", 0)
	return	
	end
	Say("天忍死士：你已经在总坛接了本教的入门任务，但是尚未完成，你必须上华山为本教夺得禹王剑。", 0)	
end;

end;


function yes()
if (GetSeries() ~= 3) then								--如果玩家不属于火系
	Say("天忍死士：你的根基与本教路数不合，勉强为之有害无益。", 0)
else
	if (GetLevel() >= 10) then						--等级达到十级
		Say("天忍死士：既加入本教，就要遵从教主号令。本教教规森严，优胜劣汰是本教的法则，你就用自己的实力来证明你的价值吧！", 2, "进入天忍教/go", "我再想想/no")
	else
		Say("天忍死士：本教弟子都是精英之辈，像你这样没有经过磨砺的新手，建议你先去野外练练，<color=Red>十级<color>以后再来找我。", 0)
	end		
end	

end;	

function no()
end;


function go()
NewWorld(49, 1644, 3215)					--把玩家传送到门派入口
SetRevPos(49,28)	 						--设置重生点
SetTask(4, 10)
SetFaction("天忍教")      					--玩家加入天忍教
SetCamp(2)
SetCurCamp(2)
AddMagic(135)
SetRank(55)							--设置称号
Msg2Player("加入天忍教，成为了一名杀手。")
Msg2Player("学会天忍教武功“残阳如血”。")
end;