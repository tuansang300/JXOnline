--中原南区 襄阳府 驿站车夫对话

CurStation = 5;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("车夫：您家要去哪里？坐我的车吧，保管又快捷又便宜。", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "返回的地点/TownPortalFun", "不用了/OnCancel");
end;

function  OnCancel()
   Say("车夫：没钱你就只有走路了。",0)
end;