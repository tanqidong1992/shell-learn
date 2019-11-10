#!/bin/bash
# 初始化进度条
# 参数1 进度条字符
function onProgressStart(){
    progressBarChar=$1
    if [ -z $progressBarChar ]; then
        progressBarChar='#'
    fi
    let lastProgress=0
}
# 设置进度条的进度
# 参数1 当前进度值
# 返回值 1表示进度条未初始化
function updateCurrentProgress(){
    let currentProgress=$1
    #判断进度条是否已初始化
    if [ -z ${progressBarChar} ]; then
        echo "ProgressBar Not Initialized"
        return 1
    fi
    #如果当前进度小于上次进度,则直接返回
    if [ $currentProgress -le $lastProgress ]; then
        return 0
    fi
    #如果当前进度大于100,则设置当前进度为100
    if [ $currentProgress -ge 100 ]; then
        let currentProgress=100
    fi
    #恢复上次的进度
    bar=''
    for ((j=0;j<${lastProgress};j++))
    do
        bar+="${progressBarChar}"
    done
    # 绘制进度条
    let i=lastProgress
    icons=( "|" "/" "-" "\\" )
    while [ $i -le ${currentProgress} ]
    do
        let iconIndex=i%4
        printf "[%-100s][%d%%][%c]\r" "$bar" "$i" "${icons[$iconIndex]}"
        let i++
        sleep 0.01
        bar+="${progressBarChar}"
    done
    #保存本次进度
    let lastProgress=currentProgress
    
}
# 结束进度条
function onProgressFinished(){
    printf "\n"
    unset progressBarChar
    unset lastProgress
}

onProgressStart '#'
updateCurrentProgress 50
sleep 1
updateCurrentProgress 88
sleep 2
updateCurrentProgress 99
sleep 1
updateCurrentProgress 100
onProgressFinished