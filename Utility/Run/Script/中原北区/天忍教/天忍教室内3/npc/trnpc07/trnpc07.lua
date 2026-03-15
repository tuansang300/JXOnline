--description: 天忍教右护法耶律辟离
--author: yuanlan	
--date: 2003/5/19


Include("trnpc07_Default.lua")
Include("trnpc07_UTask_40.lua")
Include("trnpc07_UTask_45.lua")

function main()

UTask_tr = GetTask(4);

if (UTask_tr == 40) then trnpc07_UTask_40()  return end;					--40级任务
if (UTask_tr == 45) then trnpc07_UTask_45()  return end;					--40级任务

trnpc07_Default()

end;	


