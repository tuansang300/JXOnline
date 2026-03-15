--两湖区 巴陵县to南岳镇
--TrapID：两湖区 80

function main(sel)

if (GetLevel() >= 10) then						--等级达到十级
	NewWorld(54, 1471 ,2992)
else
	Msg2Player("对不起，没到十级的新手不能出村。")	
	SetPos(1808, 3456)						--走出Trap点
end

end;