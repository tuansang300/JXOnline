--description: 天忍教小男孩
--author: yuanlan	
--date: 2003/5/18


Include("trnpc04_Default.lua")
Include("trnpc04_UTask_23.lua")
Include("trnpc04_UTask_24.lua")
Include("trnpc04_UTask_26.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 23) then trnpc04_UTask_23()  return end;					--20级任务
if (UTask_tr == 24) then trnpc04_UTask_24()  return end;					--20级任务
if (UTask_tr == 26) then trnpc04_UTask_26()  return end;					--20级任务

trnpc04_Default()

end;	


