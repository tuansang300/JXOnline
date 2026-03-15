--两湖区 巴陵县 杂货店老板对话

function main(sel)

UTask_tw = GetTask(3);
UTask_twsub02 = GetTask(14);

if (UTask_tw == 45) then 		--天王帮40级任务
	if (UTask_twsub02 == 2) then 
		Say("杂货店老板：我以前是做货郎担的，积攒了一点本钱之后，就在此地安定下来，开了这间小小的杂货店。", 3, "有莲子卖吗？/lotus", "交易/yes", "不交易/no")
	else			
		Say("杂货店老板：我以前是做货郎担的，积攒了一点本钱之后，就在此地安定下来，开了这间小小的杂货店。", 2, "交易/yes", "不交易/no")
	end
return			
end

Say("杂货店老板：我以前是做货郎担的，积攒了一点本钱之后，就在此地安定下来，开了这间小小的杂货店。", 2, "交易/yes", "不交易/no")

end;


function lotus()
Say("杂货店老板：莲子可是咱们这里的特产啊，当然有啦，只要十两银子。", 2, "买/yes1", "不买/no1");
end;


function yes1()
if (GetCash() >= 10) then
	Pay(10)
	AddEventItem("莲子")
	Msg2Player("买到莲子。")
	SetTask(14, 3)	
else
	Say("杂货店老板：等存够了银子再来买吧，先看看其它的东西。", 2, "交易/yes", "不交易/no")		
end
end;


function no1()
Say("杂货店老板：要不要看看别的东西？", 2, "交易/yes", "不交易/no");
end;


function yes()
Sale(38);  			
end;

function no()
end;