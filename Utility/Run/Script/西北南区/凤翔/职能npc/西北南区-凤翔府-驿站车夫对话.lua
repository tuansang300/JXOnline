--西北南区 凤翔府 驿站车夫对话

CurStation = 1;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("车夫：你要坐车去哪儿？", 4, "经过的地点/WayPointFun", "路经的城市/StationFun","返回的地点/TownPortalFun", "不用了/OnCancel");
end;

function  OnCancel()
   Say("车夫：没银子可哪里也去不了！",0)
end;