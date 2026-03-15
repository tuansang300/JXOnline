--两湖区 巴陵县 路人9阿芳对话
--巴陵县新手任务：阿芳的嫁妆
--suyu
-------------------------------------------
function main()

UTask_world20 = GetTask(48);

if ((GetCamp() == 0) and (UTask_world20 <= 2)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------
function UTaskMain()

if(UTask_world20 == 0) then
	UTask_world20_0()
end;

if(UTask_world20 == 1) then
	UTask_world20_1()
end;

if(UTask_world20 == 2) then
	UTask_world20_2()
end;

end;

-------------------------------------------
function Default()

i = random(0,1)

if (i == 0) then
	Say("阿芳：渔民的女儿，最后只能嫁给渔民，做一个渔民的妻子。",0)
	return
end;

if (i == 1) then
	Say("阿芳：爹娘已经给我安排了婚事，虽然我不愿做一个渔妇，但是也没有办法，父母之命不能违啊。",0)
end;

end;

-------------------------------------------
function UTask_world20_0()
	Say("阿芳：爹娘已经给我安排好婚事了，可是我们家穷得连一个象样的嫁妆都拿不出来，唉，无论如何，一个象样的首饰总得有啊。最近县里来了一批外地商人，你能帮我去看看有没有便宜的首饰么？", 2, "帮忙/yes", "不帮/no")
end;

-------------------------------------------
function UTask_world20_1()
	Say("阿芳：那些商人就在县里面，麻烦你帮我问问。",0)
end;

-------------------------------------------
function UTask_world20_2()
	if(HaveItem("耳环") == 1) then
		Say("阿芳：啊！这对耳环真是太漂亮了，可总不能让你白花钱呀，这顶帽子是我自己做的，你就收下吧。",0)
		DelItem("耳环")
		
		if(GetSex() == 0) then
			AddItem(0, 7, 6, 1, 0, 0)
		else
			AddItem(0, 7, 4, 1, 0, 0)
		end
		
		SetTask(48, 0)
	else
		SetTask(48, 0)
		Msg2Player("任务失败！")
	end
end;

-------------------------------------------
function yes()
	Say("阿芳：那些商人就在县里面，麻烦你帮我问问。",0)
	SetTask(48, 1)
end;

-------------------------------------------
function no()
end;

-------------------------------------------
