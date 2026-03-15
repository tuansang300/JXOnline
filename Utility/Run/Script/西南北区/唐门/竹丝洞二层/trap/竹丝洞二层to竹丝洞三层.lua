--西南北区 竹丝洞二层to竹丝洞三层
--Trap ID：西南北区 9

function main(sel)

UTask_tm = GetTask(2);

if (UTask_tm == 65) then			--唐门弟子，接到出师任务，没有钥匙
	if ( HaveItem("钥匙三") == 1) then	--钥匙丢掉后重新打怪，但是又捡起了以前的钥匙
		DelItem("钥匙三")
		NewWorld(28, 1551, 3192)
		SetTask(2, 67)
	else
		SetPos(1606, 3207)
		Say("你没有进入竹丝洞第三层的钥匙。", 0)
	end	
end;

if (UTask_tm == 66) then
	if ( HaveItem("钥匙三") == 1) then
		DelItem("钥匙三")
		NewWorld(28, 1551, 3192)
		SetTask(2, 67)
	else		
		SetPos(1606, 3207)
		Say("你的钥匙掉了，没有钥匙进不了第三层。", 2, "我找找/find", "重新再打/redo")
	end		
end;

if (UTask_tm > 66) then					
	NewWorld(28, 1551, 3192)
end;

end;


function find()
end;


function redo()
SetTask(2, 65)	
end;
