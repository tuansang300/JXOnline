--西南北区 江津村 路人4天天对话
--江津村新手任务：虎子的弹弓
--suyu
-------------------------------------------
function UTaskMain()

if(UTask_world18 == 0) then
	UTask_world18_0()
end;

if(UTask_world8 == 1) then
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
	Say("天天：虎子哥老是欺负我，我要告诉他娘去！",0)
end;

-------------------------------------------
function UTask_world18_0()
	Say("天天：虎子哥老是欺负我，我要告诉他娘去！",0)
end;

-------------------------------------------
function UTask_world18_1()
	Say("天天：虎子哥说等他有了弹弓就带我去打鸟，可神气呢！",0)
end;

-------------------------------------------
function UTask_world18_2()
	Say("天天：虎子哥的弹弓还没有做好么？",0)
end;

-------------------------------------------
function UTask_world18_3()
	Say("天天：太好了，一会儿虎子哥就该来找我了。",0)
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