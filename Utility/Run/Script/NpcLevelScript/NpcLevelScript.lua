--计算NPC属性
--可以计算的属性包括：
--Exp、Life、LifeReplenish、AttackRating、Defense、MinDamage、MaxDamage；
--Level1、Level2、Level3、Level4。

function GetParam(strParam, index)
nLastBegin = 1
for i=1, index - 1 do
nBegin = strfind(strParam, "|", nLastBegin)
nLastBegin = nBegin + 1
end;
num = 1

strnum = strsub(strParam, nLastBegin)
nEnd = strfind(strnum, "|")
if nEnd == nil then 
return strnum
end
str1 = strsub(strnum,1,nEnd -1);
return str1
end;


function GetNpcLevelData(Level, StyleName, ParamStr)
Param1 = GetParam(ParamStr,1);
Param2 = GetParam(ParamStr,2);
result = GetData(Level, Param1, Param2);
return result;
end;


function GetData(Level, Param1, Param2)
result = Param2 * Level + Param1;
return floor(result);
end;
