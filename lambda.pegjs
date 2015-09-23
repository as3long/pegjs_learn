lambda
    = left:exp1 "=>" right:exp2 { return new Function(left,"return "+right);}

var "变量"
    = strs:[a-zA-Z0-9]+ { return text(); }

exp1 "左侧表达式"
    = _ var _ (_ "," _ var)* _ {return text();}

exp2 "右侧表达式"
    = .+ {return text();}

_ "whitespace"
  = [ \t\n\r]*