--两湖区 巴陵县to神农架
--TrapID：两湖区 83
function main(sel)

if (GetLevel() >= 10) then						--等级达到十级
	NewWorld(74, 2040 ,3259)
else
	Msg2Player("对不起，没到十级的新手不能出村。")	
	SetPos(1338, 3353)						--走出Trap点
end

AddTermini(46)

end;