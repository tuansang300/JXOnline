--西南北区 成都府 路人14薛小妹对话  峨嵋派40级任务
--author: yuanlan	
--date: 2003/5/23



function main(sel)

UTask_em = GetTask(1);
UTask_emsub01 = GetTask(29);

if (UTask_em == 45) then 

	if (UTask_emsub01 == 0) then 
		Talk(5, "", "薛小妹：这位大姐，你老跟住我，有啥子事嘛？", "不好意思，因为妹子你身上有一种奇异的香味，所以……", "薛小妹：啊，你真的闻到了吗？我用的是灵麝香囊，里面的香料可是从西域传过来的呢！", "原来是灵麝香囊，难怪这么香！妹子，你可不可以把这个灵麝香囊卖给我？我有急用。", "薛小妹：卖是不卖的，不过我听说城里的杂货店最近进了一批新款的银簪，你拿一支银簪来跟我换吧！")
		SetTask(29, 2)	
	return
	end
	
	if (UTask_emsub01 == 2) then 
		Say("薛小妹：想要灵麝香囊吗？你拿一支银簪来跟我换吧！", 0)
	return
	end
	
	if (UTask_emsub01 == 4) then 
		if (HaveItem("银簪") == 1) then
			Say("薛小妹：好漂亮的银簪，这个香囊就送给你吧！", 1, "得到灵麝香囊/get")
		else
			Say("薛小妹：买到银簪了吗？",0)			
		end
	return					
	end
		
	if (UTask_emsub01 == 10) then 
		if (HaveItem("灵麝香囊") == 1) then
			Say("薛小妹：还有啥子事？", 0)
		else
			Say("薛小妹：我没有灵麝香囊了，你还有啥子事？",0)			
		end
	return					
	end	

end;
		
Say("薛小妹：你老跟住我，到底想干啥子嘛？",0)

end;


function get()
DelItem("银簪")
AddEventItem("灵麝香囊")
Msg2Player("得到灵麝香囊。")
SetTask(29, 10)	
end;