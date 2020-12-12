#!/bin/bash
function daemonTask(){
    taskName=$1
    sleepTime=$2
    #echo "Task[${taskName}] start..."
    sleep ${sleepTime}s 
    #echo "Task[${taskName}] is done"
}
function waitForMultiTask(){
    local taskPids=$@
    local unfinishedTaskCount=0
    for taskPid in  ${taskPids[@]}
    do
        if [ -e "/proc/${taskPid}" ];then
            let unfinishedTaskCount++
        fi
    done
    echo "${unfinishedTaskCount}"
    return 0
}
taskIds=()
for((j=1;j<10;j++))
do
    daemonTask task${j} ${j} &
    taskIds=(${taskIds[@]} $!)
done
echo "wait for task pid:${taskIds[@]}"
#exit 0
wait_loop_times=0
taskCount=${#taskIds[@]}
unfinishedTaskCount=$(waitForMultiTask ${taskIds[@]})
while [ ${unfinishedTaskCount} -ge 0 ]
do
    let finishedCount=taskCount-unfinishedTaskCount;
    let process=finishedCount*100/taskCount;
    dots=""
    for ((i=0;i<process;i++))
    do
        dots+="."
    done
    printf "[%-100s][%2d]%%\r" ${dots} $process
    dit=${dit}.
    let wait_loop_times++
    if [ $unfinishedTaskCount -eq 0 ];then
        break
    fi
    sleep 1s
    unfinishedTaskCount=$(waitForMultiTask ${taskIds[@]})
    
done
wait $taskId
printf "\n" 
