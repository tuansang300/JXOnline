--description: 中原北区 汴京府 赌徒1对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19


function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then
	UTask_trsub06 = GetTask(26)
	if (UTask_trsub06 == 0) then 
		Talk(8, "select", "赌徒：老子的手气怎么这么背，赌一盘输一盘！老子已经输得倾家荡产了，只剩下这柄一文不值的断剑。", "玩家：断剑！老兄，你这把断剑卖不卖？", "赌徒：卖！当然卖！你别看这把剑模样不起眼，其实用来切切菜还是蛮不错的！你可真有眼光啊！", "玩家：你要多少钱？", "赌徒：不贵不贵，才五百两银子。", "玩家：什么？你简直是在敲诈嘛！", "赌徒：你看我已经穷得身无分文了，就算帮帮忙，让我用这五百两去翻本嘛！", "玩家：好吧，如果不是为了拿到羊皮书，我才不上你的当呢！")
		DelItem("断剑“转魄”")			--处理重接任务后，玩家捡起任务道具的情况
	return
	end
	if (UTask_trsub06 == 10) then 
		Say("赌徒：我没别的东西可卖了。", 0)
	return
	end	
end;	

Say("赌徒：我已经好几天没吃没喝了，输光了家当，回到家里又被老婆打了出来。", 0);

end;


function select()
if (GetCash() >= 500) then
	Pay(500)
	AddEventItem("断剑“转魄”")
	Msg2Player("得到断剑“转魄”。")
	SetTask(26, 10)
	if (HaveItem("断剑“掩日”") == 1 and HaveItem("断剑“断水”") == 1 and HaveItem("断剑“去邪”") == 1 and HaveItem("断剑“灭魂”") == 1) then 		
		SetTask(4, 65)
	end	
else
	Say("赌徒：原来也是个穷鬼，难道想骗我的宝剑不成？", 0)	
end;
end;
