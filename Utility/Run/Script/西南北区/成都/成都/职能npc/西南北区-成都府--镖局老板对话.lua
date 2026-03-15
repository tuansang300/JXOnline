--description: 西南北区成都府镖局老板 
--author: yuanlan	
--date: 2003/3/5


function main(sel)

UTask_em = GetTask(1);

if (UTask_em == 44) then 							--峨嵋派40级任务
Talk(6, "", "玩家：听说贵镖局藏有一幅宋徽宗的<color=Red>《芙蓉锦鸡图》<color>，我想买，请问要多少银子？", "镖局老板：好大的口气！你知道那幅图的价值吗？多少银子也不卖！", "玩家：你们行货运镖的人要一幅画做什么？不如让给我吧，要什么条件只管开口！", "镖局老板：你倒是爽快，好！只要你能为我找来三样东西，我就把《芙蓉锦鸡图》拱手相让！", "玩家：哪三样东西？", "镖局老板：<color=Red>灵麝香囊<color>、<color=Red>鹰睛护身符<color>和<color=Red>碧玺戒指<color>，全是保护我们行镖顺利的吉祥玩意儿，不过，可不大好找哦。")
SetTask(1, 45)
return
end;		


if (UTask_em == 45) then 							--峨嵋派40级任务
	UTask_emsub01 = GetTask(29)
	UTask_emsub02 = GetTask(30)
	UTask_emsub03 = GetTask(31)
	if ( UTask_emsub01 == 10  and  UTask_emsub02 == 10  and  UTask_emsub03 == 10 ) then	
		if (HaveItem("灵麝香囊")== 1  and  HaveItem("鹰睛护身符")== 1  and  HaveItem("碧玺戒指")== 1) then	
			Say("镖局老板：行走江湖的人信义为先，我原本只是让你知难而退，没想到你真的弄到了这三样东西，好，我就把《芙蓉锦鸡图》送给你！", 1, "得到芙蓉锦鸡图/get")
		return
		end
			--丢失								
		if (HaveItem("灵麝香囊")== 0  and  HaveItem("鹰睛护身符")== 0  and  HaveItem("碧玺戒指")== 0) then				Say("系统：真糟糕！你不小心把香囊、护身符和戒指都给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这三样东西。", 2, "我再找找/find", "重新得到物品/redo1")
		return
		end
		
		if (HaveItem("灵麝香囊")== 1  and  HaveItem("鹰睛护身符")== 0  and  HaveItem("碧玺戒指")== 0) then				Say("系统：真糟糕！你不小心把护身符和戒指都给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这两样东西。", 2, "我再找找/find", "重新得到物品/redo2")
		return
		end
		
		if (HaveItem("灵麝香囊")== 0  and  HaveItem("鹰睛护身符")== 1  and  HaveItem("碧玺戒指")== 0) then				Say("系统：真糟糕！你不小心把香囊和戒指都给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这两样东西。", 2, "我再找找/find", "重新得到物品/redo3")
		return
		end

		if (HaveItem("灵麝香囊")== 0  and  HaveItem("鹰睛护身符")== 0  and  HaveItem("碧玺戒指")== 1) then				Say("系统：真糟糕！你不小心把香囊和护身符都给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这两样东西。", 2, "我再找找/find", "重新得到物品/redo4")
		return
		end		
		
		if (HaveItem("灵麝香囊")== 1  and  HaveItem("鹰睛护身符")== 1  and  HaveItem("碧玺戒指")== 0) then				Say("系统：真糟糕！你不小心把碧玺戒指给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这样东西。", 2, "我再找找/find", "重新得到物品/redo5")
		return
		end
					
		if (HaveItem("灵麝香囊")== 1  and  HaveItem("鹰睛护身符")== 0  and  HaveItem("碧玺戒指")== 1) then				Say("系统：真糟糕！你不小心把鹰睛护身符给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这样东西。", 2, "我再找找/find", "重新得到物品/redo6")
		return
		end
		
		if (HaveItem("灵麝香囊")== 0  and  HaveItem("鹰睛护身符")== 1  and  HaveItem("碧玺戒指")== 1) then				Say("系统：真糟糕！你不小心把灵麝香囊给弄丢了，如果要得到《芙蓉锦鸡图》，你必须有这样东西。", 2, "我再找找/find", "重新得到物品/redo7")
		return
		end
							
	else									--没有做完三个任务
		Say("镖局老板：先找齐<color=Red>灵麝香囊<color>、<color=Red>鹰睛护身符<color>和<color=Red>碧玺戒指<color>再说。", 0)					
	end
return			
end;					


Say("镖局老板：本镖局的镖师们个个都有一身好功夫，本镖局接的生意，如果有人敢打主意，那叫做自不量力！",0)	

end;



function get()
DelItem("灵麝香囊")
DelItem("鹰睛护身符")
DelItem("碧玺戒指") 
AddEventItem("芙蓉锦鸡图")
Msg2Player("得到《芙蓉锦鸡图》。")
SetTask(1, 46)
end;


function find()
end;


function redo1()
SetTask(29, 0)
SetTask(30, 0)
SetTask(31, 0)
end;

function redo2()
SetTask(30, 0)
SetTask(31, 0)
end;

function redo3()
SetTask(29, 0)
SetTask(31, 0)
end;

function redo4()
SetTask(29, 0)
SetTask(30, 0)
end;

function redo5()
SetTask(31, 0)
end;

function redo6()
SetTask(30, 0)
end;

function redo7()
SetTask(29, 0)
end;