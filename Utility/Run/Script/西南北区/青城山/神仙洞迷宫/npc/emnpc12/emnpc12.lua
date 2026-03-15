--description: ∂Î·“≈…∏ﬂ»À 
--author: yuanlan	
--date: 2003/3/5


Include("emnpc12_Default.lua")
Include("emnpc12_UTask_42.lua")
Include("emnpc12_UTask_46.lua")


function main()

UTask_em = GetTask(1);

if (UTask_em == 42) then emnpc12_UTask_42() return end;					
if (UTask_em == 46) then emnpc12_UTask_46() return end;					

emnpc12_Default();
	
end;	


