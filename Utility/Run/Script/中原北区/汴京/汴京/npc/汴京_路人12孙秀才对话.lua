--description: 中原北区 汴京府 路人12孙秀才对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19



function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr == 62) then

	UTask_trsub05 = GetTask(25)

	if (UTask_trsub05 == 0) then 
		Say("孙秀才：小生有几个字谜，在冥思苦想不得其解，不知你猜不猜得出：“床前明月光”是个什么字？", 3, "晃/no1", "旷/yes1", "胆/no1")
		DelItem("断剑“断水”")			--处理重接任务后，玩家捡起任务道具的情况
		return
	end
	
	if (UTask_trsub05 == 2) then 
		Say("孙秀才：“有脚快如风 点火有声音 加水茶沏成 长草花将放”是什么字呢？", 3, "仓/no2", "仑/no2", "包/yes2")
		return
	end

	if (UTask_trsub05 == 4) then 
		Say("孙秀才：“不正只为晚节屈”又是个什么字？", 3, "丐/yes3", "歪/no1", "疋/no1")
		return
	end

	if (UTask_trsub05 == 6) then 
		Say("孙秀才：“点点萤火照江边”又是个什么字？", 3, "浊/no2", "淡/yes4", "烫/no2")
		return
	end
	
	if (UTask_trsub05 == 8) then 
		Say("孙秀才：“庭前残月对映，影下雁阵一行”这个字可就难猜啦。", 3, "廖/yes5", "寥/no1", "膺/no1")
		return
	end

	if (UTask_trsub05 == 10) then 
		Say("孙秀才：佩服！佩服！", 0)
	end	

return	
end;

i = random(0,3);

if (i == 0) then
Say("孙秀才：“国破山河在，城春草木深。感时花溅泪，恨别鸟惊心。”唉！可怜啊可怜！",0)
return
end;

if (i == 1) then
Say("孙秀才：“烟笼寒水月笼沙，夜泊秦淮近酒家。商女不知亡国恨，隔江犹唱后庭花。”唉！可悲啊可悲！",0)
return
end;

if (i == 2) then
Say("孙秀才：“秦时明月汉时关，万里长征人未还。但使龙城飞将在，不教胡马渡阴山！”唉！可叹啊可叹！",0)
return
end;

if (i == 3) then
Say("孙秀才：“烟柳画桥，风帘翠幕，参差十万人家。……重湖叠巘清佳。有三秋桂子，十里荷花。”唉！可恨啊可恨！——如果不是因为这首词，金人恐怕也不会起兵南侵吧？",0)
return
end;

end;



function yes1()
Say("孙秀才：妙啊！", 0);
SetTask(25, 2);
end;

function no1()
Say("孙秀才：好像不对吧？", 0);
end;

function yes2()
Say("孙秀才：对啊！", 0);
SetTask(25, 4);
end;

function no2()
Say("孙秀才：非也非也！", 0);
end;

function yes3()
Say("孙秀才：高明！高明！", 0);
SetTask(25, 6);
end;

function yes4()
Say("孙秀才：高！实在是高！", 0);
SetTask(25, 8);
end;

function yes5()
Say("孙秀才：佩服！佩服！小生很乐意交你这个朋友，小生祖上曾经是习武之人，到小生这一辈弃武从文，唉，百无一用是书生啊！小生祖上留下一把断剑，反正我用不着，就送给你吧。", 0);
AddEventItem("断剑“断水”");
Msg2Player("得到断剑“断水”。");
SetTask(25, 10);
if (HaveItem("断剑“掩日”") == 1 and HaveItem("断剑“转魄”") == 1 and HaveItem("断剑“去邪”") == 1 and HaveItem("断剑“灭魂”") == 1) then 		
	SetTask(4, 65)
end	
end;