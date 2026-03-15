--description: 中原北区 天忍教室内3to天忍教圣洞1 天忍教出师任务
--author: yuanlan	
--date: 2003/5/20
--Trap ID：中原北区 5


function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr <= 60) then
	Msg2Player("这里是天忍教圣洞，未得令者不得进入。")
	SetPos(1749, 3081)						--设置走出Trap点
end	

if (UTask_tr > 60) and (UTask_tr < 65) then
	Msg2Player("没有五把断剑，无法进入圣洞。")
	SetPos(1749, 3081)						--设置走出Trap点
end	

if (UTask_tr == 65) then
	if (HaveItem("断剑“掩日”") == 1 and HaveItem("断剑“断水”") == 1 and HaveItem("断剑“转魄”") == 1 and HaveItem("断剑“去邪”") == 1 and HaveItem("断剑“灭魂”") == 1) then 
		DelItem("断剑“掩日”")
		DelItem("断剑“断水”")
		DelItem("断剑“转魄”")
		DelItem("断剑“去邪”")
		DelItem("断剑“灭魂”")
		NewWorld(51, 1666, 3291)
		SetFightState(1)						--玩家转换成战斗状态
		SetTask(4, 66)
	else
		SetPos(1749, 3081)						--设置走出Trap点
		if (HaveItem("断剑“掩日”") == 0) then
			Msg2Player("没有断剑“掩日”，无法进入圣洞，重新寻找断剑“掩日”。")
			SetTask(4, 62)
			SetTask(24, 0)
		end	
		if (HaveItem("断剑“断水”") == 0) then
			Msg2Player("没有断剑“断水”，无法进入圣洞，重新寻找断剑“断水”。")
			SetTask(4, 62)
			SetTask(25, 0)
		end
		if (HaveItem("断剑“转魄”") == 0) then
			Msg2Player("没有断剑“转魄”，无法进入圣洞，重新寻找断剑“转魄”。")
			SetTask(4, 62)
			SetTask(26, 0)
		end
		if (HaveItem("断剑“去邪”") == 0) then
			Msg2Player("没有断剑“去邪”，无法进入圣洞，重新寻找断剑“去邪”。")
			SetTask(4, 62)
			SetTask(27, 0)
		end		
		if (HaveItem("断剑“灭魂”") == 0) then
			Msg2Player("没有断剑“灭魂”，无法进入圣洞，重新寻找断剑“灭魂”。")
			SetTask(4, 62)
			SetTask(28, 0)
		end
	return	
	end	
end	

if (UTask_tr > 65) then
	NewWorld(51, 1666, 3291)
	SetFightState(1)						--玩家转换成战斗状态
end	

end;