--两湖区 天王帮入门任务酿酒计时脚本

function OnTimer()

StopTimer()						--结束计时
Msg2Player("酿酒时间已到！");
SetTask(13, 1);

end;

