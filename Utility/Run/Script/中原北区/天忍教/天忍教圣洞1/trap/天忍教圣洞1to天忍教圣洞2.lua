--description: 中原北区 天忍教圣洞1to天忍教圣洞2 天忍教出师任务
--author: yuanlan	
--date: 2003/5/20
--Trap ID：中原北区 7

function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 66) then
	Task0021 = GetTaskTemp(21)
	Task0022 = GetTaskTemp(22)
	Task0023 = GetTaskTemp(23)
	Task0024 = GetTaskTemp(24)
	if (Task0021 == 1) and (Task0022 == 1) and (Task0023 == 1) and (Task0024 == 1) then	
		NewWorld(52, 1729, 3225)
		SetTask(4, 67)
	else
		Msg2Player("没有得到完整的<color=Red>四句口令<color>，无法进入圣洞第二层。")
		SetPos(1767, 3186)						--设置走出Trap点
	end	
end	

if (UTask_tr > 66) then
	NewWorld(52, 1729, 3225)					
end	


end;