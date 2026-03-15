--西南北区 江津村 路人1吴老爹对话
--江津村新手任务：吴老爹的药
--suyu
-------------------------------------------
function UTaskMain()

if(UTask_world21 == 0) then
	UTask_world21_0()
end;

if(UTask_world21 == 1) then
	UTask_world21_1()
end;

if(UTask_world21 == 2) then
	UTask_world21_2()
end;

end;

-------------------------------------------
function Default()

	Say("吴老爹：我和老太婆的身体都不好，闺女为了照顾我们，到现在还没有找婆家，我们做爹娘的真是对不住她呀！",0)

end;

-------------------------------------------
function UTask_world21_0()

	Say("吴老爹：咳，咳，我这咳嗽就是止不住，唉，也不知道红梅什么时候回来，是时候该去药房抓药了，咳咳咳……", 2, "帮忙/yes", "不帮忙/no")

end;
-------------------------------------------
function UTask_world21_1()
	Say("吴老爹：你可以去药店郎中那里问问，就从这里往西走，没几步就到了，咳咳……记好了是十颗川贝丸，麻烦你了。", 0);
end;

-------------------------------------------
function UTask_world21_2()

if(HaveItem("川贝丸"))then		--判断玩家是否拿到药
	Say("吴老爹：谢谢，谢谢，赶明儿，我叫红梅给你做双鞋。",0)
	DelItem("川贝丸")		--删掉玩家身上的药
	SetTask(49, 3);
else
	UTask_world21_1();
	SetTask(49, 1);
end
	
end;

-------------------------------------------
function yes()

	Say("吴老爹：你可以去药店郎中那里问问，就从这里往西走，没几步就到了，咳咳……记好了是十颗川贝丸，麻烦你了。", 0);
	SetTask(49, 1);

end;

-------------------------------------------
function no()

end;

-------------------------------------------
function main(sel)

UTask_world21 = GetTask(49);

if ((GetCamp() == 0) and (UTask_world21 <= 2)) then
	UTaskMain()
else
	Default()
end;	
	
end;


-------------------------------------------