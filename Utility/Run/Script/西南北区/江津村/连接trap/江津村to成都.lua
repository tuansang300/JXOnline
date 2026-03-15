--西南北区 江津村to成都
--Trap ID：西南北区 55

function main(sel)

if (GetLevel() >= 10) then						--等级达到十级
	NewWorld(11, 3407, 5295)
	SetFightState(1)						--玩家转换成战斗状态
else
	Msg2Player("对不起，没到十级的新手不能出村。")	
	SetPos(3402, 6019)						--走出Trap点
end

end;