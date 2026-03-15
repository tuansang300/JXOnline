--中原北区 汴京府 药店老板对话

function main(sel)
Say("药店老板：我这儿什么药都有，养身健体的、治病消灾的、延年益寿的、补血提气的，您要买什么药？", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(9);  			--弹出交易框
end;


function no()
end;


