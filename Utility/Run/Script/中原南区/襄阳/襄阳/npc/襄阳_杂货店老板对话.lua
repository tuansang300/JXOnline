--description: 中原南区 襄阳府 杂货店老板对话	武当派20级任务
--author: yuanlan	
--date: 2003/5/14



function main(sel)

UTask_wd = GetTask(5);

if (UTask_wd == 24) then 
	if ( HaveItem("残破的天蚕道袍") == 1 ) then
		Talk(2, "", "玩家：老板，你能帮我修补好这件道袍吗？", "杂货店老板：我的儿上武当山采桑叶的时候被火狼洞里的<color=Red>野狼<color>给叼走了，谁能帮我救回儿子，么事我都答应他。")
		SetTask(5, 25)
	else	
		Say("系统：真糟糕！你不小心把残破的天蚕道袍给弄丢了，你打算怎么办？", 2, "我再找找/find", "重新去火狼洞打出道袍/redo")	
	end
return
end;

	
if (UTask_wd == 25) then 
	Say("杂货店老板：我的儿上武当山采桑叶的时候被火狼洞里的<color=Red>野狼<color>给叼走了，谁能帮我救回儿子，么事我都答应他。", 2, "交易/yes", "不交易/no")
return	
end;	
	

if (UTask_wd == 26) then 	
	Say("杂货店老板：你是我儿子的救命恩人，有什么要帮忙的只管开口。", 1, "帮忙修补道袍/ok")
return
end;		

Say("杂货店老板：您家要买点么事？是吃的，穿的，还是用的？", 2, "交易/yes", "不交易/no");

end;



function ok()
if ( HaveItem("残破的天蚕道袍") == 1  and  HaveItem("天蚕") == 1 ) then	
	Say("杂货店老板： 冇得问题，我免费为你补。", 0) 
	DelItem("残破的天蚕道袍") 
	DelItem("天蚕") 	
	AddEventItem("补好的天蚕道袍")
	Msg2Player("得到修补好的天蚕道袍。")
	SetTask(5, 28)
return	
end;

if ( HaveItem("残破的天蚕道袍") == 0 ) then	
	Say("系统：真糟糕！你不小心把残破的天蚕道袍给弄丢了，你打算怎么办？", 2, "我再找找/find", "重新去火狼洞打出道袍/redo1")
return	
end;	

if ( HaveItem("残破的天蚕道袍") == 1 and HaveItem("天蚕") == 0 ) then	
	Say("系统：真糟稿！你不小心把天蚕给弄丢了，没有天蚕丝，道袍可修补不好。", 2, "我再找找/find", "重新去火狼洞做一遍任务/redo2")
return	
end;	

end;	




function yes()
Sale(11);  			--弹出交易框
end;


function no()
end;


function find()
end;


function redo()
Say("系统：请重新去火狼洞寻找道袍。", 0)
Msg2Player("你已选择重新去火狼洞寻找道袍。")
SetTask(5, 22)
end;

function redo1()
Say("系统：请重新去火狼洞寻找道袍。", 0)
Msg2Player("你已选择重新去火狼洞寻找道袍。")
DelItem("天蚕")
SetTask(5, 22)
end;

function redo2()
Say("系统：请重新去火狼洞做一遍救小孩的任务。", 0)
Msg2Player("你已选择重新去火狼洞做一遍救小孩的任务。")
SetTask(5, 25)
end;