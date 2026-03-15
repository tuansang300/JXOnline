--description: 西南北区 成都府 铁匠铺老板 峨嵋派10级任务
--author: yuanlan	
--date: 2003/5/24


function main(sel)

UTask_em = GetTask(1);

if (UTask_em == 14) then 	
	if ( HaveItem("左半面铜镜") == 1 and HaveItem("右半面铜镜") == 1 ) then	
		Talk(4, "", "铁匠大哥，你能不能帮我把这两半铜镜重新复原在一起？", "铁匠：要是换了别人，想复原一面铜镜是难于登天，可是我却有一种祖传的手艺，专门用来修补铜镜，你算是找对人了，只不过……", "你要多少钱才肯修复铜镜？", "铁匠：只要你能帮我找到一种叫做亮银矿的矿石，我就帮你修补好这个铜镜，听说城西的树林中就有亮银矿，不过因为那里有很多吃人的野兽，所以平时没人敢去采矿。")
		SetTask(1, 15)
	else
		Say("系统：真糟糕！你不小心把半面铜镜给弄丢了，如果要破镜重圆，你必须先得到左右两半铜镜。", 2, "我再找找/find", "重新做这个任务/redo")
	end			
return
end;		

if (UTask_em == 15) then 							
	if ( HaveItem("左半面铜镜") == 1 and HaveItem("右半面铜镜") == 1 ) then	
		if ( HaveItem("亮银矿") == 0) then					--没有找到亮银矿
			Say("铁匠：听说城西的树林中有亮银矿，没有亮银矿可补不了铜镜。", 0)
		else									--找到亮银矿
			Talk(2, "select", "铁匠大哥，这是你要的亮银矿。", "铁匠：好，我帮你把铜镜修补好吧。")
		end
	else
		Say("系统：真糟糕！你不小心把半面铜镜给弄丢了，如果要破镜重圆，你必须先得到左右两半铜镜。", 2, "我再找找/find", "重新做这个任务/redo")
	end		
return			
end;

Say("铁匠：有没有兴趣来我这儿当学徒？包吃包住喔！", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(13);  			--弹出交易框
end;


function no()
end;


function select()
DelItem("左半面铜镜")
DelItem("右半面铜镜")
DelItem("亮银矿")
AddEventItem("铜镜")
Msg2Player("得到修补好的铜镜。")
SetTask(1, 16)
end;


function find()
end;

function redo()
Say("系统：请重新在峨嵋派前殿妙隐处接受任务。", 0)
DelItem("左半面铜镜")
DelItem("右半面铜镜")
SetTask(1, 10)
end;