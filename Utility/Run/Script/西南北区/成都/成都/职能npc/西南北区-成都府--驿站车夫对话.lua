--西南北区 成都府 驿站车夫对话

CurStation = 2;
Include("\\Script\\Global\\station.lua");

function main(sel)
	Say("车夫：格老子的，等了一天也没有几个要坐车的，你娃要去哪里？", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "返回的地点/TownPortalFun", "不用了/OnCancel");
end;

function  OnCancel()
   Say("车夫：你娃耍老子吗？没钱坐啥子车！",0)
end;