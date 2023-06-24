#!/bin/bash
array=(helloservice hiservice nameservice managerservice teamservice)
for line in "${array[@]}"
do
    COUNT=`ps -ef | grep helloservice  | grep -v grep | wc -l`.  RUNNING , 3
    MAX=2
    echo $line
    echo $COUNT
        if [ $COUNT -gt $MAX ]
    then
       echo $line
        PROCS=`ps -ef| grep $line | grep -v grep | awk '{print $2, $11, $12, $13}' | sort -k 4`
        JAR=`echo "${PROCS}" | awk -F"-Djar_name=| " '{print $5}'`
        echo $JAR
        JAR_RUN=`echo $JAR | sed 's/ /,/g'`
        echo $JAR_RUN
       cd /apps/nnos/test/scripts
        ./mail.sh $line $JAR_RUN $COUNT
    fi
done
