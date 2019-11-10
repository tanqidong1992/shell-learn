global_a=-1
global_b=-1
sum(){
    a=$1
    b=$2
    #定义全局变量c
    let c=a+b
    #定义局部变量d,函数外无法访问
    local d
    let d=a+b
    #使用全局变量global_b
    global_b=$d
    #定义局部变量global_a,屏蔽了已定义的全局变量global_a
    local global_a
    global_a=$d
}
sum 1 2
# 此处c为3
echo "c:$c"
# 此处 d为空
echo "d:$d"
# 此处global_a为-1
echo "global_a:$global_a"
#此处global_b为3
echo "global_b:$global_b"

