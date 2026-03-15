--两湖区 巴陵县 武师对话 新手村练级任务(不可重复的任务)

function main(sel)

UTask_world05 = GetTask(33);

--if (GetCamp() == 0) then			--新手
	
	if (UTask_world05 == 0) then 		
		Say("武师：拳谚有云：“外练筋骨皮，内练一口气”，又有“外练筋骨膜皮毛，内练意志精气神”之说，总之，习武必须内外兼修。年轻人，看你资质不错，不如跟我练上几手，入门学费只需纹银50两。", 2, "学/yes", "不学/no")
	return
	end
	
	if (UTask_world05 == 2) then 	
		Task0028 = GetTaskTemp(28)	
		if (Task0028 >= 50) then
			Say("武师：外功功力越强你的抗打能力就越强，外功的修练是在江湖上安身立命的根本。接下来你去打沙袋，注意出手的时机。", 0)
			SetTask(33, 4)
		else			
			Say("武师：你的修行还不够，耐下心来继续打木桩。", 0)
		end
	return
	end		
	
	if (UTask_world05 == 4) then 		
		Task0029 = GetTaskTemp(29)	
		if (Task0029 >= 50) then
			Say("武师：练拳不练功，到老一场空。等你有了足够的内功功力就能学会高深的武功了。你可以去打木人了。", 0)
			SetTask(33, 6)
		else			
			Say("武师：你的修行还不够，耐下心来继续打沙袋。", 0)
		end		
	return
	end

	if (UTask_world05 == 6) then 		
		Task0030 = GetTaskTemp(30)	
		if (Task0030 >= 50) then
			Say("武师：现在我教你轻功，使用轻功可以快速逃离战场。", 0)
			AddMagic(210,1)
			Msg2Player("恭喜你学会轻功！")
			SetTask(33, 10)
		else			
			Say("武师：你的修行还不够，耐下心来继续打木人。", 0)
		end		
	return
	end
	
	if (UTask_world05 == 10) then 		
		Say("武师：我已经没什么可教你的了，要记住勤学苦练，以后你可以随时来我这里练习。", 0)
	return
	end
	
--return
--end;

Say("武师：夏练三伏，冬练三九，练武之道，一天都不可懈怠啊！", 0);

end;

			
function yes()
if (GetCash() >= 50) then
	Pay(50)
	Say("武师：习武之道要从基本功开始，先去那边打木桩吧。", 0)
	SetTask(33, 2)
else
	Say("武师：凑够了银子再来学艺吧。", 0)
end;	
end;

function no()
Say("武师：没有名师指点，犹如瞎子摸门，事倍功半，有可能一辈子都无法窥得武学真境。", 0);
end;
