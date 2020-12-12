#!/bin/bash

person_name="tqd"
person_age=123
peson_alias="QidongTan"

# 大小写修改
# ${PARAMETER^} 变量值中第一个字符改为大写
# ${PARAMETER^^} 变量值中所有字符改为大写
# ${PARAMETER,} 变量值的第一个字符改为小写
# ${PARAMETER,,} 变量值的所有字符改为小写
echo ${peson_alias^}
echo ${peson_alias^^}
echo ${peson_alias,}
echo ${peson_alias,,}

#变量名扩展
# ${!PREFIX@}
# ${!PREFIX*}  列出所有以PREFIX开头的已定义变量
echo ${!person*}
for variableName in ${!person*}
do
    #间接参数扩展 #{!PARAMETER}
    #a=1 b=a  echo ${!b} is 1
    echo "The value of ${variableName} is ${!variableName}"
done
# 字符串移除
# ${PARAMETER#PATTERN} 从头开始移除最短匹配PATTERN的子串
# ${PARAMETER##PATTERN} 从头开始移除最长匹配PATTERN的子串
# ${PARAMETER%PATTERN} 从结尾向前移除最短匹配PATTERN的子串
# ${PARAMETER%%PATTERN} 从结尾向前移除最长匹配PATTERN的子串
t="I Love You"
echo ${t#* }
echo ${t##* }
echo ${t% *}
echo ${t%% *}
fileName="a.b.txt"
fileExtName=${fileName##*.}
fileBaseName=${fileName%.*}
echo "fileExtName is ${fileExtName}"
echo "fileBaseName is ${fileBaseName}"
#字符串搜索与替换
# ${PARAMETER/PATTERN/STRING} 将 第一个匹配PATTERN的子串 替换为 STRING
# ${PARAMETER//PATTERN/STRING} 将所有匹配PATTERN的子串 替换为 STRING
# ${PARAMETER/PATTERN} 删除第一个匹配PATTERN的子串
# ${PARAMETER//PATTERN} 删除所有匹配PATTERN的子串
t="I Love You,But You don't love Me!"
echo "Replace I with He: ${t/I/He}"
echo "Replace You with He: ${t/You/He}"
echo "Replace all You with He: ${t//You/He}"

echo "remove first You: ${t//You}"
echo "remove all You: ${t/You}"

echo "The char size of variable t is ${#t}"


#字符串扩展
# ${parameter:offset:length}
t="0123456789"
echo "1-2:${t:1:2}"

#使用默认值
# ${parameter:-defaultValue} 当变量parameter未定义或者未空时生效
# ${parameter-defaultValue} 仅当变量parameter未定义时才生效
unset t
echo "unset t- ${t-defaultvalue}"
echo "unset t:- ${t:-defaultvalue}"
t=""
echo "empty t- ${t-defaultvalue}"
echo "empty t:- ${t:-defaultvalue}"
#指定默认值
# ${parameter:=defaultValue} 当变量parameter未定义或者未空时生效,将默认值赋值给parameter并返回
# ${parameter=defaultValue} 仅当变量parameter未定义时才生效,将默认值赋值给parameter并返回

unset t
echo "unset:=t ${t:=defaultTValue}"
echo "t $t"
unset t
echo "unset=t ${t=defaultTValue}" 
echo "t $t"


t=""
echo "empty:=t ${t:=defaultTValue}"
echo "t $t"
t=""
echo "empty=t ${t=defaultTValue}" 
echo "t $t"


#使用替代值
# ${parameter:+replacedValue} 当且仅当parameter的值不为空时，拓展为替代值
# ${parameter+replacedValue} 当paremter已定义时，拓展为替代值


t="t"
echo "replaced no-empty t:+ ${t:+replaceValue}"
echo "replaced no-empty t ${t}"
t="t"
echo "replaced no-empty t+ ${t+replaceValue}"
echo "replaced no-empty t ${t}"

t=""
echo "replaced empty t:+ ${t:+replaceValue}"
echo "replaced empty t ${t}"
t=""
echo "replaced empty t+ ${t+replaceValue}"
echo "replaced empty t ${t}"
unset t
echo "replaced unset t:+ ${t:+replaceValue}"
echo "replaced unset t ${t}"
unset t
echo "replaced unset t+ ${t+replaceValue}"
echo "replaced unset t ${t}"

# 拓展变量存在判断
# ${parameter:?ErrorMsg} 当parameter未定义或者为空时，提示错误信息
# ${parameter?ErrorMsg} 当且仅当parameter未定义时，提示错误信息
t=""
#echo ${t:?Error：parameter t is empty}
#echo ${t?Error：parameter t is empty}
unset t
#echo ${t:?Error：parameter t is unset}
#echo ${t?Error：parameter t is unset}


set 1 2 "3 3" 4
# $* 等价于 $1c$2...$n 其中 c为IFS的第一个字符
# $@ 等价于 "$1" "$2" "$n"
echo "$*"
echo "$@"
# $* 与 $@的区别在for循环中明显体现出来了
for item in "$@"
do
    echo "@: ${item}"
done
for item in "${*}"
do
    echo "*: ${item}"
done

#参数个数 $#
echo "parameter size:$#"
#最近执行命令的推出状态 $?
echo $?
#当且执行脚本的进程号 $$
#最近一次执行后台命令的进程号 $!
#特殊参数0表示脚本的名称

