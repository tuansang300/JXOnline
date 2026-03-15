--description: 中原北区 汴京府 路人16乞丐对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then

	UTask_trsub08 = GetTask(28)

	if (UTask_trsub08 == 0) then 
		Say("乞丐：赏几个小钱吧！", 2, "给/yes1", "不给/no")
		DelItem("断剑“灭魂”")			--处理重接任务后，玩家捡起任务道具的情况
		return
	end
	
	if (UTask_trsub08 == 2) then 
		Say("乞丐：赏几个小钱吧！", 2, "给/yes2", "不给/no")
		return
	end
	
	if (UTask_trsub08 == 4) then 
		Say("乞丐：赏几个小钱吧！", 2, "给/yes3", "不给/no")
		return
	end

	if (UTask_trsub08 == 10) then 
		Say("乞丐：看来你倒不是一个沽名钓誉的伪善之辈，好，小叫化交了你这个朋友。", 0)
		return
	end
end

Say("乞丐：大侠，有酒吗？求你赏我一口酒喝吧！我可以没饭吃，可不能没酒喝啊。",0)

end;


function yes1()
if (GetCash() >= 10) then
	Pay(10)
	Say("乞丐：只给这么点啊？哼！这么小气！", 0)
	SetTask(28, 2)
else
	Say("玩家：不好意思，我带的钱不够。", 0)		
end
end;


function yes2()
if (GetCash() >= 50) then
	Pay(50)
	Say("乞丐：哼！别以为我是乞丐就好打发！", 0)
	SetTask(28, 4)
else
	Say("玩家：我已经没钱啦。", 0)		
end
end;


function yes3()
if (GetCash() >= 100) then
	Pay(100)
	Say("乞丐：哇，你的涵养真是好啊，看来你不是一个沽名钓誉的伪善之辈，好，小叫化交了你这个朋友，这把断剑就送给你吧。", 0)
	AddEventItem("断剑“灭魂”")
	Msg2Player("得到断剑“灭魂”。")
	SetTask(28, 10)
	if (HaveItem("断剑“掩日”") == 1 and HaveItem("断剑“断水”") == 1 and HaveItem("断剑“转魄”") == 1 and HaveItem("断剑“去邪”") == 1) then 		
		SetTask(4, 65)
	end		
else
	Say("玩家：我也是心有余而力不足啊！", 0)		
end
end;


function no()
Say("乞丐：这世上为富不仁者真多啊！", 0);
end;