--两湖区 巴陵县 路人4小渔对话
--巴陵县新手任务：小渔的爹爹
--suyu
-------------------------------------------
function main()

UTask_world18 = GetTask(46);

if ((GetCamp() == 0) and (UTask_world18 <= 2)) then
	UTaskMain()
else
	Default()
end;	
	
end;

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

i = random(0,1)

if (i == 0) then
	Say("小渔：我爹爹是洞庭湖的渔民，每天都要到湖上去撒网捕鱼，如果遇到了刮风下雨，有时会好几天都回不了家呢。",0)
	return
end;

if (i == 1) then
	Say("小渔：爹很疼我，可是他老说如果我是男孩子就好了，那样我就可以帮他捕鱼了。",0)
end;

end;

-------------------------------------------
function UTask_world18_0()

	Say("小渔：呜呜……我爹昨天打鱼遇上大风雨，被淋病了，现在还发烧呢。爹的病还没好，又不能打鱼，我们吃什么啊。你能帮我去求求吴神医么？吴神医是个大好人，他一定会帮我们的。",2,"帮忙/yes","不帮/no")

end;

-------------------------------------------
function UTask_world18_1()

	Say("小渔：吴神医的家就住在县南门边。",0)

end;

-------------------------------------------
function UTask_world18_2()

if(HaveItem("枇杷丸") == 1) then
	Say("小渔：啊！这就是枇杷丸？这下子爹爹的病很快就会好起来的。你真是个大好人，这双鞋是我娘做的，你一定要收下呀。",0)
	DelItem("枇杷丸")
	
	if(GetSex() == 0) then
		AddItem(0, 5, 0, 1, 0, 0)
	else
		AddItem(0, 5, 2, 1, 0, 0)
	end
	
	SetTask(46, 3)
else
	SetTask(46, 1)
	Say("小渔：还没有找到枇杷丸么？爹爹的病可怎么办呀，呜呜呜……",0)
end

end;

-------------------------------------------
function yes()

Say("小渔：我记得以前听大夫说得要枇杷丸才可以治好高烧，可是我们穷人哪儿买得起啊。",0)
SetTask(46, 1)

end;

-------------------------------------------
function no()
	Say("小渔：我要在这里继续等好心人。", 0)
end;

-------------------------------------------
