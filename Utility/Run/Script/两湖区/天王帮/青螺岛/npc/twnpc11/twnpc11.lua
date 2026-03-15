--description: 青螺岛码头船夫
--author: yuanlan	
--date: 2003/4/28


function main()

if (GetFaction() == "天王帮") then					--如果玩家是天王帮弟子，坐船不收钱
	Say("天王帮众：要回天王岛吗？本帮兄弟，坐船免费。", 2, "是/yes", "否/no")
else	
	Say("天王帮众：要回天王岛吗？不是本帮兄弟，坐船可不是免费的。", 2, "坐/yes1", "不坐/no")
end;

end;


function yes()
NewWorld(59, 1425, 3472)						--回天王岛
SetFightState(0)							--转换为非战斗状态
end;


function yes1()
if (GetCash() >= 500) then						--参考值
	Pay(500)
	NewWorld(59, 1425, 3472)					--回天王岛
	SetFightState(0)						--转换为非战斗状态
else
	Say("天王帮众：没钱还到处乱逛？", 0)		
end;
end;


function no()
end;








