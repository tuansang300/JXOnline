--description: 中原北区 汴京府 路人13张寡妇对话 天忍教出师任务
--author: yuanlan	
--date: 2003/5/19




function main(sel)

UTask_tr = GetTask(4);

if (UTask_tr < 62) then
	i = random(0,1)
	if (i == 0) then
		Say("张寡妇：我男人前年得病死了，我独守空闺，真是度日如年啊。",0)
		return
	end;
	if (i == 1) then
		Say("张寡妇：我听说，城北的方老太为她那从未谋面的丈夫活活守了三十年寡，这真是太可怕了！",0)
		return
	end;
end;
	

if (UTask_tr == 62) then
	
	UTask_trsub04 = GetTask(24)
	
	if (UTask_trsub04 < 2) then 
		i = random(0,1)
		if (i == 0) then
			Say("张寡妇：我男人前年得病死了，我独守空闺，真是度日如年啊。",0)
			return
		end;
		if (i == 1) then
			Say("张寡妇：我听说，城北的方老太为她那从未谋面的丈夫活活守了三十年寡，这真是太可怕了！",0)
			return
		end;
	end;
	
	if (UTask_trsub04 == 2) then 
		if (HaveItem("银簪") == 1) then
			Talk(2, "", "玩家：这根银簪是城里的曲铁匠托我送给你的，他一直对你有情意，只是没有勇气表白，不知你……", "张寡妇：其实、其实我对他也早有好感，只是、只是我是一个寡妇，怎么好先开口呢？这个香囊是我亲手缝制的，麻烦你替我送给他，就、就算是信物吧。")
			DelItem("银簪")
			AddEventItem("香囊")
			Msg2Player("得到一个香囊。")
			SetTask(24, 4)
		else						--丢失处理
			Say("系统：真糟糕！你不小心把银簪弄丢了。", 2, "我再找找/find", "重新找铁匠/redo")		
		end
	return		
	end
	
	if (UTask_trsub04 > 2) then 
		Say("张寡妇：多谢你替我和老曲牵线，要不然我真的就要孤老终死了！", 0)
	return	
	end;

end;


if (UTask_tr > 62) then
Say("张寡妇：多谢你替我和老曲牵线，要不然我真的就要孤老终死了！", 0)
end;	


end;


function find()
end;


function redo()
Say("系统：请重新在汴京城铁匠处接受任务。", 0)
Msg2Player("你已选择重新在汴京城铁匠处接受任务。")
SetTask(24, 0)
end;
