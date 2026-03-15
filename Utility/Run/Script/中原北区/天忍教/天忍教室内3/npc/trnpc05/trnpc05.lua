--description: 天忍教风堂堂主完颜雪衣
--author: yuanlan	
--date: 2003/5/19


Include("trnpc05_Default.lua")
Include("trnpc05_UTask_30.lua")
Include("trnpc05_UTask_35.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 30) then trnpc05_UTask_30()  return end;					--30级任务
if (UTask_tr == 35) then trnpc05_UTask_35()  return end;					--30级任务

trnpc05_Default()

end;	


