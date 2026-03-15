--西南北区 成都府 杂货店老板对话 
--author: yuanlan	
--date: 2003/5/23



function main(sel)

UTask_em = GetTask(1);
UTask_tm = GetTask(2);


if (UTask_em == 35) then 		--峨嵋派穆云慈30级任务
Say("杂货店老板：我这里卖的是各种南北杂货，请随意挑，看看有什么用得着的？", 3, "有鸡腿卖吗?/chicken", "交易/yes", "不交易/no")
return
end;


if (UTask_em == 45) then 		--峨嵋派40级任务
	UTask_emsub01 = GetTask(29)
	if (UTask_emsub01 == 2) then 
		Say("杂货店老板：我这里卖的是各种南北杂货，请随意挑，看看有什么用得着的？", 3, "有银簪卖吗?/hairpin", "交易/yes", "不交易/no")
	else
		Say("杂货店老板：我这里卖的是各种南北杂货，请随意挑，看看有什么用得着的？", 2, "交易/yes", "不交易/no")
	end
return
end;	
	

if (UTask_tm == 14) then		--唐门孙婉10级任务
Say("杂货店老板：我这里卖的是各种南北杂货，请随意挑，看看有什么用得着的？", 3, "有玛瑙戒指卖吗？/ring", "交易/yes", "不交易/no")
return
end;


Say("杂货店老板：我这里卖的是各种南北杂货，请随意挑，看看有什么用得着的？", 2, "交易/yes", "不交易/no");

end;


function chicken()
Say("杂货店老板：刚出炉的热腾腾的鸡腿，不晓得几香哦！五十两银子一只，要不要？", 2, "买/yes1", "不买/no1");
end;


function hairpin()
Say("杂货店老板：女侠好眼光，这银簪是新进的款式，不知多好卖呢！才二百两银子，多便宜啊，买一只吧！", 2, "买/yes2", "不买/no1");
end;


function ring()
Say("杂货店老板：这可是上好的玛瑙戒指啊！五百两银子一只。虽然比较贵，但是绝对物超所值。", 2, "买/yes3", "不买/no1");
end;


function yes1()
if (GetCash() >= 50) then
	Pay(50);
	AddEventItem("鸡腿");
	Msg2Player("买到鸡腿。");
else
	Say("杂货店老板：等存够了银子再来买吧，先看看其它的东西。", 2, "交易/yes", "不交易/no")		
end
end;


function yes2()
if (GetCash() >= 200) then
	Pay(200);
	AddEventItem("银簪");
	Msg2Player("买到银簪。");
	SetTask(29, 4);	
else
	Say("杂货店老板：等存够了银子再来买吧，先看看其它的东西。", 2, "交易/yes", "不交易/no")		
end
end;


function yes3()
if (GetCash() >= 500) then
	Pay(500)
	AddEventItem("玛瑙戒指")
	Msg2Player("买到玛瑙戒指。")
else
	Say("杂货店老板：等存够了银子再来买吧，先看看其它的东西。", 2, "交易/yes", "不交易/no")		
end
end;


function no1()
Say("杂货店老板：要不要看看别的东西？", 2, "交易/yes", "不交易/no");
end;


function yes()
Sale(14);  		--弹出交易框
end;

function no()
end;