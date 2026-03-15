--description: 中原南区 襄阳府 铁匠对话 武当派出师任务
--author: yuanlan	
--date: 2003/5/17



function main(sel)

UTask_wd = GetTask(5);
UTask_wdsub03 = GetTask(18);
	
if (UTask_wd == 62) then
	
	if (UTask_wdsub03 == 2) then 
		Talk(2, "", "玩家：如今前线战事日紧，官兵军械不足，您能不能尽快赶制一批送往前线？", "铁匠：不瞒你说，我这段时间一直都在日夜赶制，但是因为数量巨大，所以矿石的库存已经不够用了，<color=Red>磁铁矿、亮银矿和赤铜矿<color>都已经用完了，你能不能到<color=Red>城外西南树林<color>中帮我弄一些矿石？")
		SetTask(18, 5)	
	return
	end
	
	if (UTask_wdsub03 == 5) then 
		if ( HaveItem("磁铁矿") == 1 and HaveItem("亮银矿") == 1 and HaveItem("赤铜矿") == 1) then
			Talk(2, "", "玩家：我已经找来矿石，希望这些矿石能够打造出最好的兵器，帮助士兵们抵御外敌入侵。", "铁匠：大家众志成城，一定可以赶走那些豺狼虎豹！")
			DelItem("磁铁矿")
			DelItem("亮银矿")
			DelItem("赤铜矿")
			SetTask(18, 8)
		else
			Say("铁匠：巧妇难为无米之炊，没有矿石，我也没有办法打造兵械啊！你能不能到<color=Red>城外西南树林<color>中帮我弄一些<color=Red>磁铁矿、亮银矿和赤铜矿<color>？", 2, "交易/yes", "不交易/no")
		end
	return
	end		

end

Say("铁匠：我这里专门为驻军打造兵器，忙得很，您家要买么事武器，自己随便挑。", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(10);  			--弹出交易框
end;


function no()
end;





