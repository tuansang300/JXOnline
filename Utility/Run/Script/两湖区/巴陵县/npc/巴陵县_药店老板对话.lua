--description: 两湖区 巴陵县 药店老板对话 天王帮40级任务
--author: yuanlan	
--date: 2003/4/26


function main(sel)

UTask_tw = GetTask(3);
UTask_world18 = GetTask(46);

if (UTask_tw == 42) then 							
Talk(7, "", "玩家：在下是天王帮弟子，有一同门身中赤链蛇毒，请神医指点解药！", "吴神医：赤链蛇毒！这可比较麻烦啊……麻烦是麻烦，却也不是没有办法，其实赤链蛇毒的难解之处在于解药的药引……", "玩家：不知需要什么药引？", "吴神医：这可是我吴家的独传秘方哦，看在你是天王帮兄弟的份上，我就告诉你吧，药引是<color=Red>火蜥蜴的鳞片<color>和<color=Red>绿毛龟<color>壳上的毛。找到这两样东西，你的同门就有救了。", "玩家：不知何处可以寻到这两种药引？", "吴神医：听说<color=Red>武陵山伏流洞<color>里有<color=Red>火蜥蜴<color>，至于<color=Red>绿毛龟<color>就是可遇不可求了，过去倒是有人在<color=Red>天王岛<color>上见到过。", "玩家：多谢神医指点！") 
SetTask(3, 45)
return
end;		

if (UTask_tw == 45) then 
Say("吴神医：<color=Red>武陵山伏流洞<color>里有<color=Red>火蜥蜴<color>，至于<color=Red>绿毛龟<color>，过去有人在<color=Red>天王岛<color>上见到过，只要找到<color=Red>火蜥蜴的鳞片<color>和<color=Red>绿毛龟<color>壳上的毛作药引，你的同门就有救了。要不要看看别的药？", 2, "交易/yes", "不交易/no")
return		
end;

if(UTask_world18 == 1) then
Say("吴神医：噢？小渔的爹爹病倒了？你来的可真不巧，刚近的一批枇杷丸全卖给天王帮了。要不，你去问问村里天王帮的弟子？",0)
return
end;

Say("吴神医：我这里都是上好的药材，有病治病，无病强身，货真价实，如假包换，要买点什么药？", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(39);  			--弹出交易框
end;


function no()
end;