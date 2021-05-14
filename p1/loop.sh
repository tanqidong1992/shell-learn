#!/bin/bash
PID_PATH='checkservice.pid'
if [ -f "${PID_PATH}" ]
then
    kill -USR2 `cat ${PID_PATH}`
    rm -f ${PID_PATH}
fi
echo $$ > ${PID_PATH}
pid=$$
while true
do
    echo "run at ${pid}..."
    sleep 1
done