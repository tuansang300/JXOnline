--中原南区 扬州府 驿站车夫对话

CurStation = 6;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("车夫：一辈子替人拉车，不知什么时候能够坐坐别人拉的车？要用车吗？", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "返回的地点/TownPortalFun", "不用了/OnCancel");
end;

function  OnCancel()
   Say("车夫：没钱你就只有走路了。",0)
end;