#!/bin/sh
array=(helloservice hiservice nameservice managerservice teamservice)
for line in "${array[@]}"
do
echo $line
done

