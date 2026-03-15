--西南北区 江津村 路人8吴红梅对话
--江津村新手任务：吴老爹的药
--suyu
-------------------------------------------
function UTaskMain()

Say("吴红梅：谢谢你给我爹抓药，这是我刚做的鞋，你要是不嫌弃就拿着吧。", 0)

if(GetSex() == 0)then
	AddItem(0, 5, 0, 1, 0, 0)
else
	AddItem(0, 5, 2, 1, 0, 0)
end

SetTask(49, 0)

end;

-------------------------------------------
function Default()
	Say("吴红梅：我娘想吃蒜泥白肉，可是卖肉的好像没出来，这可如何是好？",0)
end;

-------------------------------------------
function main(sel)

UTask_world21 = GetTask(49);

if ((GetCamp() == 0) and (UTask_world21 == 3)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------