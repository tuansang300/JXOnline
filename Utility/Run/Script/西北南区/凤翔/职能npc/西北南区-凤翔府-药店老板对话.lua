--西北南区 凤翔府 药店老板对话

function main(sel)

Say("药店老板：俺这里卖的草药有病治病、无病养身。像你们这种在刀口上讨生活的人，更是离不了这些活命的草药。", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(21);  		--弹出交易框
end;


function no()
end;