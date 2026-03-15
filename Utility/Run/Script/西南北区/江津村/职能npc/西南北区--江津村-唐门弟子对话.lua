--西南北区 江津村 唐门侍卫对话

function main(sel)

if (GetFaction() ~= "") then						--如果玩家已经属于某一门派
	if (GetFaction() == "峨嵋派") then				
		Say("唐门侍卫：本派对本门一直颇有微词，咱们两派虽然同在蜀地，却从来没有交往。", 0)
	end
	if (GetFaction() == "翠烟门") then				
		Say("唐门侍卫：本门行事虽然不拘常规，但是也不会欺负弱质女子。", 0)
	end
	if (GetFaction() == "唐门") then				
		Say("唐门侍卫：掌门派你来是有什么吩咐吗？", 0)
	end
	if (GetFaction() == "五毒教") then				
		Say("唐门侍卫：你是五毒教的人吗？本门与贵教素无来往，不知有何贵干？虽然听说贵教使毒下蛊的手段天下一流，但是本门却不怕，倘若贵教有什么企图，恐怕在本门的暗器底下也讨不了好去！", 0)
	end
	if (GetFaction() == "天王帮") then				
		Say("唐门侍卫：贵帮远在洞庭，与本门好像没有什么交情吧？", 0)
	end
	if (GetFaction() == "少林派") then				
		Say("唐门侍卫：本门从不与那些所谓的名门正派交往。", 0)
	end
	if (GetFaction() == "武当派") then				
		Say("唐门侍卫：本门从不与那些所谓的名门正派交往。", 0)
	end
	if (GetFaction() == "昆仑派") then				
		Say("唐门侍卫：有何指教？", 0)
	end
	if (GetFaction() == "天忍教") then				
		Say("唐门侍卫：你我既不是朋友，也不是敌人，不必套什么近乎！", 0)
	end
	if (GetFaction() == "丐帮") then				
		Say("唐门侍卫：想不到一群叫化子也能闯出一番天地，本门还是很佩服的。", 0)
	end
else	
	UTask_tm = GetTask(2)
	if (UTask_tm == 0) then						--未入过唐门
		Talk(2, "select", "唐门侍卫：本门雄踞川蜀，凭借暗器和火器独步武林，饮誉江湖达数百年之久。江湖中人谈本门而色变，可见本门的厉害！", "什么武林正道、民族大义，全都是狗屁！咱们只按照自己的牌理出牌，既不愿与那些所谓的名门正派结交，也不屑与邪魔歪道为伍。想加入本门可不是一件容易的事，存心不良的人咱们可不要！")
	return	
	end
	if (UTask_tm == 70) then					--唐门出师
		Say("唐门侍卫：好久不见，出师以后有何奇遇啊，说来听听？", 0)
	return	
	end
	Say("唐门侍卫：你已经在竹海三关接了本门的入门任务，但是尚未完成，你必须拿到青、紫、白三柄竹杖，然后交给出口的同门。", 0)
end;

end;


function select()
Say("唐门侍卫：想加入本门吗？", 2, "加入/yes", "不加入/no");
end;


function yes()
if (GetSeries() ~= 1) then							--如果玩家不属于木系
	Say("唐门侍卫：本门适合的是一些不循规蹈矩、蔑视常规的人，你不适合本门，还是另投别的门派吧！", 0)
else
	if (GetLevel() >= 10) then					--等级达到十级
		Say("唐门侍卫：本门暗器功夫天下闻名，对机关陷阱也深有研究，你可要下番苦功学啰！但是要记住，千万不可泄漏本门秘技！", 2, "进入唐门/go", "我再想想/no")			  
	else
		Say("唐门侍卫：你的基础这么差，入了本门也难以有所作为，先去自己磨练磨练，到了<color=Red>十级<color>以后再来找我吧！", 0)	
	end		
end		
end;	

function no()
end;

function go()
NewWorld(25, 3982, 5235)				--把玩家传送到门派入口
--SetFightState(1)					--玩家进入非战斗区域，取消战斗状态转换
SetRevPos(25,15)	 					--设置重生点
SetTask(2, 10)
SetFaction("唐门")      				--玩家加入唐门
SetCamp(3)
SetCurCamp(3)
AddMagic(45)
SetRank(25)
Msg2Player("恭喜你加入唐门，先从杂役做起吧！")
Msg2Player("学会唐门特技“霹雳弹”。")
end;