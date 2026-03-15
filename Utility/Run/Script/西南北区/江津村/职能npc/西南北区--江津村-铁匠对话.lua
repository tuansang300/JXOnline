--西南北区江津村铁匠
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

end;

-------------------------------------------
function Default()
	Say("铁匠：我铺里的兵刃全都是精铁打就，而且价格公道，大侠行走江湖、行侠仗义，没个称手的兵刃怎么行？买一把吧？", 2, "交易/yes", "不交易/no");
end;

-------------------------------------------
function UTask_world18_0()
	Default()
end;

-------------------------------------------
function UTask_world18_1()
	Say("铁匠：你来问小虎子的弹弓呀，我还没有动手做呢，需要的原料还没有去找，我的铺子又走不开。这样吧，你帮我找到树杈和牛皮，有了原料我马上就能做好。",0)
	SetTask(46, 2)
end;

-------------------------------------------
function UTask_world18_2()
	if((HaveItem("树杈") ==1 ) and (HaveItem("牛皮") == 1)) then	--判断是否有道具
		Talk(2,"","铁匠：你这么快就找到了！把树杈和牛皮交给我吧，我马上动手做。","铁匠：做好了，你帮我把弹弓带给小虎子吧。顺便告诉他不要太调皮哟。")
		DelItem("树杈")		--删掉树杈
		DelItem("牛皮")		--删掉牛皮
		AddEventItem("弹弓")		--给玩家弹弓
		Msg2Player("你得到了一把弹弓。")
		SetTask(46, 3)
	else
		Say("铁匠：树杈和牛皮，找到了拿给我，我马上帮小虎子做个弹弓。",0)
		Default()
	end
	
end;

-------------------------------------------
function yes()
Sale(22);  				--弹出交易框
end;

-------------------------------------------
function no()
end;

-------------------------------------------
function main(sel)

UTask_world18 = GetTask(46);

if ((GetCamp() == 0) and (UTask_world18 <= 2)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------