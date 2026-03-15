--两湖区 巴陵县 驿站车夫对话

CurStation = 10;
Include("\\Script\\Global\\station.lua");

function main(sel)

if (GetLevel() >= 10) then			--等级达到十级
	Say("车夫：这里虽然是湖区，但是陆路往来也很方便，你要坐车去哪里？", 4, "路经的地方/WayPointFun", "路经的城市/StationFun","返回的地点/TownPortalFun", "不用了/OnCancel");
else		
	Say("车夫：对不起，没到十级的新手不能坐车出村。", 0)
end

end;

function  OnCancel()
   Say("车夫：有了钱再来坐车吧。",0)
end;