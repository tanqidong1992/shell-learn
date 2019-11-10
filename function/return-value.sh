#判断进程是否存在
# 参数1 进程号
# 返回值 1表示进程不存在,0表示进程存在
function isProcessExist(){
    local pid=$1
    if [ -z $pid ]; then
        return 1
    fi
    if [ -e "/proc/${pid}" ]; then
        return 0
    else
        return 1
    fi
}

pid='1'
isProcessExist $pid

if [ $? -eq 0 ]; then
    echo "Process[${pid}] is exists!"
else
    echo "Process[${pid}] is not exists!"
fi