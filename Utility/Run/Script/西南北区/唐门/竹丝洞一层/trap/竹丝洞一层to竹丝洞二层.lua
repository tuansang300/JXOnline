--西南北区 竹丝洞一层to竹丝洞二层
--Trap ID：西南北区 7

function main(sel)

UTask_tm = GetTask(2);

if (UTask_tm == 0) then				--不是唐门弟子
	SetPos(1603, 3210)
	Say("你不是唐门弟子，不能进入竹丝洞第二层。", 0)
end;

if (UTask_tm > 0) and (UTask_tm < 62) then	--唐门弟子，未到出师任务
	SetPos(1603, 3210)
	Say("你目前无法进入竹丝洞第二层。", 0)
end;

if (UTask_tm == 62) then			--唐门弟子，接到出师任务，没有钥匙
	if ( HaveItem("钥匙二") == 1) then	--钥匙丢掉后重新打怪，但是又捡起了以前的钥匙
		DelItem("钥匙二")
		NewWorld(27, 1522, 3205)
		SetTask(2, 65)
	else	
		SetPos(1603, 3210)
		Say("你没有进入竹丝洞第二层的钥匙。", 0)
	end	
end;

if (UTask_tm == 64) then			--唐门弟子，接到出师任务，拿到钥匙
	if ( HaveItem("钥匙二") == 1) then
		DelItem("钥匙二")
		NewWorld(27, 1522, 3205)
		SetTask(2, 65)
	else		
		SetPos(1603, 3210)
		Say("你的钥匙掉了，没有钥匙进不了第二层。", 2, "我找找/find", "重新再打/redo")	
	end
end;	
	
if (UTask_tm > 64) then					
	NewWorld(27, 1522, 3205)
end;

end;


function find()
end;

function redo()
SetTask(2, 62)
end;