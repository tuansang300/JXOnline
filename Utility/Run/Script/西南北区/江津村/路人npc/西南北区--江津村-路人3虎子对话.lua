--西南北区 江津村 路人3虎子对话
--江津村新手任务：虎子的弹弓
--suyu
-------------------------------------------
function UTaskMain()

if(UTask_world18 == 0) then
	UTask_world18_0()
end;

if(UTask_world18 == 1) then
	UTask_world18_1()
end;

if(UTask_world18 == 2) then
	UTask_world18_2()
end;

if(UTask_world18 == 3) then
	UTask_world18_3()
end;

end;
-------------------------------------------
function Default()
	Say("虎子：怎么还不下雪呀？下了雪我就可以堆雪人、打雪仗，多带劲儿啊！哎，不知道铁匠大叔答应送我的弹弓打好了没有，大叔的手艺真的很好啊，他的名剑铁铺远近闻名，打出来的武器特别好呢。",0)
end;

-------------------------------------------
function UTask_world18_0()

if(GetSex() == 0)then
	Say("虎子：大哥哥，铁匠大叔答应送给我一把弹弓，不知道做好了没有，你能帮我去问问他么？", 2 , "帮忙/yes", "不帮/no")
else
	Say("虎子：大姐姐，铁匠大叔答应送给我一把弹弓，不知道做好了没有，你能帮我去问问他么？", 2 , "帮忙/yes", "不帮/no")
end

end;

-------------------------------------------
function UTask_world18_1()
	Say("虎子：快去帮我问问呀，大叔做好了没有呀？",0);
end;

-------------------------------------------
function UTask_world18_2()
	Say("虎子：等大叔帮我做好了弹弓，我要去村外打鸟，不过可不要告诉我娘，她一定不会让我去的。",0)
end;

-------------------------------------------
function UTask_world18_3()
if(HaveItem("弹弓") == 1) then
	Say("虎子：太好了，太好了，一会儿我就去找天天出去玩儿。这把武器是我在村外找到的，我留着没什么用就送给你吧。",0)
	DelItem("弹弓")
	i = random(0,5)
	j = random(0,4)
	l = GetLucky()	
	AddItem(0, 0, i, 2, j, l) --Level2Weapon
	SetTask(46, 4)
else
	SetTask(46, 0)
	Msg2Player("任务失败！")
end
end;

-------------------------------------------
function yes()
	Say("虎子：铁匠大叔的铺子就在村口，很容易找到的。",0)
	SetTask(46, 1)
end;

-------------------------------------------
function no()
	Say("虎子：我去找别人帮我问问。",0)
end;

-------------------------------------------
function main(sel)

UTask_world18 = GetTask(46);

if ((GetCamp() == 0) and (UTask_world18 <= 3)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------