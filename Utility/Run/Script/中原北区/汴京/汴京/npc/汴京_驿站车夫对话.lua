--中原北区 汴京府 驿站车夫对话

CurStation = 4;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("车夫：要坐车去哪里？", 4, "上次经过的地点/WayPointFun", "路经的城市/StationFun", "返回的地点/TownPortalFun", "不用了/OnCancel");
end;

function  OnCancel()
   Say("车夫：没钱你就只有走路了。",0)
end;