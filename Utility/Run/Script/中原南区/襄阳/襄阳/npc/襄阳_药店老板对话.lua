--description: 中原南区 襄阳府 药店老板对话 武当派出师任务
--author: yuanlan	
--date: 2003/5/17

function main(sel)

UTask_wd = GetTask(5);
UTask_wdsub02 = GetTask(17);
	
if (UTask_wd == 62) then
	
	if (UTask_wdsub02 == 2) then 
		Talk(2, "", "玩家：如今前线战场瘟疫蔓延，请问有什么好办法呢？", "药店老板：治疗瘟疫需要五种药材：<color=Red>当归、合欢、玄参、防己、朱砂<color>。这五种药材生长在<color=Red>伏牛山的东部<color>，只要找齐这五种药材，制成药丸，就可以抑制瘟疫。")
		SetTask(17, 5)	
	return
	end
	
	if (UTask_wdsub02 == 5) then 
		if ( HaveItem("当归") == 1 and HaveItem("合欢") == 1 and HaveItem("玄参") == 1 and HaveItem("防己") == 1 and HaveItem("朱砂") == 1) then
			Talk(2, "", "玩家：我已经找齐治疗瘟疫的五种药材，请您赶快制成药丸，交给官府，送往军营。", "药店老板：国家兴亡，匹夫有责，您家放心，我一定尽快赶制一匹药丸送往前线。")
			DelItem("当归")
			DelItem("合欢")
			DelItem("玄参")
			DelItem("防己")
			DelItem("朱砂")
			SetTask(17, 8)
		else
			Say("药店老板：抑制瘟疫需要五种药材：<color=Red>当归、合欢、玄参、防己、朱砂<color>，缺一不可。这五种药材都生长在<color=Red>伏牛山的东部<color>。", 2, "交易/yes", "不交易/no")
		end
	return
	end		

end

Say("药店老板：我这里治疗各种打伤、跌伤、撞伤、割伤、烫伤、烧伤的药比别处都齐全，您家要买么事药？", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(12);  			--弹出交易框
end;


function no()
end;


