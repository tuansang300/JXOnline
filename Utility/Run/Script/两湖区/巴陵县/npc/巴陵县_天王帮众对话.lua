--两湖区 巴陵县 天王将领对话
--巴陵县新手任务：小渔的爹爹
--suyu

function main(sel)

UTask_world18 = GetTask(46);

if(UTask_world18 == 1) then
	Say("天王弟子：枇杷丸啊，既然是救人的，那自然是义不容辞，虽然帮里的弟兄们也等着用，我就送你一颗吧。",0)
	AddEventItem("枇杷丸")
	SetTask(46, 2)
	Msg2Player("你得到一颗枇杷丸。")
return
end;

if (GetFaction() ~= "") then						--如果玩家已经属于某一门派
	if (GetFaction() == "峨嵋派") then				
		Say("天王将领：敝帮帮主常常跟属下们提起贵派，对贵派掌门清晓师太一直都是十分敬慕的。", 0)
	end
	if (GetFaction() == "翠烟门") then				
		Say("天王将领：女人麻烦，漂亮的女人尤其麻烦，会武功的漂亮女人更是麻烦中的麻烦，贵派的人咱可不敢招惹！", 0)
	end
	if (GetFaction() == "唐门") then				
		Say("天王将领：学武之人应该光明磊落，我最讨厌那些使暗器、下毒药的见不得光的行径！", 0)
	end
	if (GetFaction() == "五毒教") then				
		Say("天王将领：本帮虽然不迷信任何名门正派，但是也不屑与那些使蛊下毒之徒为伍！", 0)
	end
	if (GetFaction() == "天王帮") then				
		Say("天王将领：兄弟有事吗？", 0)
	end
	if (GetFaction() == "少林派") then				
		Say("天王将领：少林功夫虽然号称武林正宗，但是我却不怎么服气，和尚好好念经才是正经，学什么人打架，实在有违清修之道。", 0)
	end
	if (GetFaction() == "武当派") then				
		Say("天王将领：传说贵派的道一真人武功深不可测，不知什么时候有机会见到。", 0)
	end
	if (GetFaction() == "昆仑派") then				
		Say("天王将领：贵派近年来发展神速，想必也不是浪得虚名，只是别把中原武林都看扁了！", 0)
	end
	if (GetFaction() == "天忍教") then				
		Say("天王将领：咱们可不和金人打什么交道！", 0)
	end
	if (GetFaction() == "丐帮") then				
		Say("天王将领：贵帮与本帮号称天下两大帮，有机会咱们要好好亲近亲近。", 0)
	end
else	
	UTask_tw = GetTask(3)
	if (UTask_tw == 0) then						--未入过天王帮
		Talk(3, "select", "天王将领：本帮帮主杨瑛在江湖上赫赫有名，别看她是个女子，但是武艺高强，胆识过人，不让须眉，帮里的兄弟们都服她！", "本帮帮众遍布两湖，人多势大，天下无人敢小觑咱们！", "本帮既抗金兵、也反宋廷，兄弟们都是贫苦百姓出身，闯荡江湖也只是为了有条活路。哪个皇帝坐江山，跟咱们可没什么关系！")
	return	
	end
	if (UTask_tw == 70) then					--天王帮出师
		Say("天王将领：好兄弟，咱们又见面了，别来可好？有机会咱哥俩再喝一杯！", 0)
	return	
	end
	Say("天王将领：你已经在天王岛孙道领处接了本帮的入门任务，但是尚未完成，你需要去巴陵县酒馆买到美酒“蓬莱春”", 0)
end;

end;



function select()
Say("天王将领：你想加入本帮吗？", 2, "加入/yes", "不加入/no");
end;


function yes()
if (GetSeries() ~= 0) then							--如果玩家不属于金系
	Say("天王将领：以你的资质和根骨不适合修练本门武功，我们不想误人子弟，你还是另投明师吧！", 0)
else
	if (GetLevel() >= 10) then					--等级达到十级
		if ( GetSex() == 1 ) then 				--玩家性别为女
			Say("天王将领：本帮帮众都是些粗豪大汉，像你这样娇滴滴的姑娘可不适合本帮。", 0)
		else							--玩家性别为男
			Say("天王将领：你加入本帮，咱们就是一家兄弟啦，大伙有福同享，有难同当，轰轰烈烈地大干一场！", 2, "进入天王帮/go", "我再想想/no")	   				
		end
	else
		Say("天王将领：学武之人，谁没流过血、流过汗？怕苦可不行！先出村好好练一练，打好根基到了<color=Red>十级<color>再来找我。", 0)
	end
end;			
end;

function no()
end;


function go()
NewWorld(59, 1425, 3472)			--把玩家传送到门派入口
--SetFightState(1)				--玩家进入非战斗区域，取消战斗状态转换	
SetRevPos(59,21)	  				--设置重生点
SetTask(3, 10)
SetFaction("天王帮")       			--玩家加入天王帮
SetCamp(3)
SetCurCamp(3)
AddMagic(29)
SetRank(43)
Msg2Player("欢迎你加入天王帮，先从一个小小的侍卫做起吧！")
Msg2Player("学会天王帮武功“斩龙诀”。")
end;