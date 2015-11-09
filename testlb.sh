#!/bin/bash
if [[ -z $1 ]] || [[ -z $2 ]] ; then
echo "Usage: $0 hostname request number"
exit -1
fi
host=$1
request=$2
n1=0
n2=0
n3=0
n=0
while [[ "$n" -ne "$request" ]]; do
node=`curl -s  http://$host:8080`
if [ "$node" == "node1" ]; then
let n1++
elif [ "$node" == "node2" ]; then
let n2++
else
let n3++
fi
n=$(($n1 + $n2 + $n3))
done
echo Node1  $n1
echo Node2  $n2
echo Node3  $n3
