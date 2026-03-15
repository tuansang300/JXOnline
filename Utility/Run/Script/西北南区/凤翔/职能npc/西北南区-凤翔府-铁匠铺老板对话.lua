--西北南区 凤翔府 铁匠铺老板对话

function main(sel)

Say("铁匠：想买点啥兵器？随便挑，随便看，没事儿。", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(19);  			--弹出交易框
end;


function no()
end;

