#判断进程是否存在
# 参数1 进程号
# 返回值 1表示存在,0表示不存在
function isProcessExist(){
    pid=$1
    if [ -f "proc/${pid}"]; then
        return 1
    else
        return 0
    fi
}

function longTask(){
    times=$1
    for ((i=0;i<${times};i++))
    do
        #echo "do sub task ${i}..."
        sleep 1
    done
    return 2
}
#在后台执行长时间运行的函数
longTask 12 &
pid=$!
#echo "pid:${pid}"
wait_loop_times=0
until [ ! -e "/proc/${pid}" ]
do
    dots=""
    for ((i=0;i<wait_loop_times;i++))
    do
        dots+="."
    done
    printf "%-100s\r" "等待${dots}"
    let wait_loop_times++
    sleep 1
done
printf "\n"
wait $pid
echo "进程:${pid}已经结束,退出值:$?"