--description: 天忍教日月坛主
--author: yuanlan	
--date: 2003/5/18


Include("trnpc03_Default.lua")
Include("trnpc03_UTask_20.lua")
Include("trnpc03_UTask_21.lua")
Include("trnpc03_UTask_22.lua")
Include("trnpc03_UTask_28.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 20) then trnpc03_UTask_20()  return end;					--20级任务
if (UTask_tr == 21) then trnpc03_UTask_21()  return end;					--20级任务
if (UTask_tr == 22) then trnpc03_UTask_22()  return end;					--20级任务
if (UTask_tr == 28) then trnpc03_UTask_28()  return end;					--20级任务

trnpc03_Default()

end;	


