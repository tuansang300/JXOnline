--西南北区 江津村 路人5虎子爹对话
--江津村新手任务：虎子拜师
--suyu
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
	Say("虎子爹：我家那口子什么都好，就是喜欢给人作媒。", 0)
end;

-------------------------------------------
function UTask_world20_0()

	Say("虎子爹：村外那个武师看起来很有本事啊。我们家虎子从小好武，要是能拜那位武师为师就好了。我们可是平凡人家，不知道学武是不是很花银子啊，你能帮我去问问那位武师吗？", 2, "帮忙/yes", "不帮/no")

end;

-------------------------------------------
function UTask_world20_1()

	Say("虎子爹：那位武师就在村子东边的茅屋旁。",0)

end;

-------------------------------------------
function UTask_world20_2()

Say("虎子爹：什么，他答应了？哎呀，那真是太好了，这顶帽子是我自己做的，虽然不值什么钱，聊表谢意吧。", 0)
if(GetSex() == 0) then
	AddItem(0, 7, 6, 1, 0, 0)
else
	AddItem(0, 7, 4, 1, 0, 0)
end

SetTask(48, 3)

end;

-------------------------------------------
function yes()
	
	Say("虎子爹：那位武师就在村子东边的茅屋旁。",0)
	SetTask(48, 1)

end;

-------------------------------------------
function no()

end;

-------------------------------------------
function main(sel)

UTask_world20 = GetTask(48);

if ((GetCamp() == 0) and (UTask_world20 <= 2)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------