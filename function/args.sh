name(){
    #参数个数
    argSize=$#
    echo "arg size:${argSize}"
    #所有参数
    allArgs=$@
    echo "all args[\$@]:${allArgs}"
    allArgs=$*
    echo "all args[\$*]:${allArgs}"
    #读取第一个参数,如果是第n个则用${n}
    arg1=$1
    echo "first arg:$arg1"
    #第0个参数,是当前脚本名
    arg0=$0
    echo "arg0:$arg0"
    #循环遍历所有参数
    echo "循环遍历所有参数"
    for ((i=1;i<=argSize;i++))
    do
       t=${!i}
       echo "arg${i}:${t}"
    done


}
name p1 p2 p3