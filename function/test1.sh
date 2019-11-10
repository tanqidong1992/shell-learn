#!/bin/bash
#计算两数之和
# 参数1 数字
# 参数2 数字
function sum(){
    arg1=$1
    arg2=$2
    let c=arg1+arg2
    echo $c
    return 0
}
#省略了function关键字
add(){
   #此函数的返回值为sum函数的返回值
   sum 1 2
}
#省略了()
function add1 {
    sum 1 2
    return 1
}
#单行函数,每行命令都需要以';'分割
add2() { c=$(sum 1 2) ; echo "sum is:${c}"; }

function add3 { c=$(sum 1 2) ; echo "sum is:${c}"; }

a=1
b=2
let c=$(sum ${a} ${b})
echo "sum of a and b is:$c"
echo "exit value is:$?"
echo "invoke add:$(add)"
echo "invoke add exit value:$?"
add1
echo "invoke add1 exit value:$?"
echo "invoke add2:$(add2)"
echo "invoke add2 exit value:$?"
add3