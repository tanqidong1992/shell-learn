#!/bin/bash
#默认shell中的变量都是全局的,用local修饰后,变量将变成局部的
function test(){
    a=12
    local b=13
}
echo "before invoke function test" 
echo "a is ${a}"
echo "b is ${b}"
test
echo "after invoke function test"
echo "a is ${a}"
echo "b is ${b}"
