--西南北区 江津村 驿站车夫对话

CurStation = 8;
Include("\\Script\\Global\\station.lua");

function main(sel)

if (GetLevel() >= 10) then			--等级达到十级
	Say("车夫：要坐车去哪儿？", 4, "经过的地点/WayPointFun", "路经的城市/StationFun", "返回的地点/TownPortalFun", "不用了/OnCancel");
else		
	Say("车夫：对不起，没到十级的新手不能坐车出村。", 0)
end

end;

function  OnCancel()
   Say("车夫：没得钱坐啥子车！",0)
end;