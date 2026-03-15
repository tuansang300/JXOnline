--两湖区 巴陵县to武陵山
--TrapID：两湖区 81

function main(sel)

if (GetLevel() >= 10) then						--等级达到十级
	NewWorld(70, 1608 ,3230)
else
	Msg2Player("对不起，没到十级的新手不能出村。")	
	SetPos(1334, 3306)						--走出Trap点
end

AddTermini(47)

end;