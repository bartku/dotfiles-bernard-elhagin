#!/usr/bin/bash

DEV='dev-kafka-mgt01'
QA='test-kafka-mgt01'
FIX='test-kafka-fix-mgt01'
PREP='test-kafka-prep-mgt01'
PROD='prod-kafka-prod-mgt01'

environment=`hostname`

case $environment in
    $DEV  ) zookeeper="dev-kafka-zk01.atena.pl:2181";;
    $QA   ) zookeeper="test-kafka-zk01.atena.pl:2181";;
    $FIX  ) zookeeper="test-kafka-fix-zk01.hestia.polska:2181";;
    $PREP ) zookeeper="test-kafka-prep-zk01.hestia.polska:2181";;
    $PROD ) zookeeper="prod-kafka-prod-zk01.hestia.polska:2181";;
esac

# filename to argument skryptu wskazujący na plik
# z listą topiców do utworzenia
filename="$1"
while IFS='' read -r line || [[ -n "$line" ]]; do
    topic=$(echo $line | cut -f 1 -d" ")
    partitions=$(echo $line | cut -f 2 -d" ")

    /opt/kafka/bin/kafka-topics.sh --alter --zookeeper $zookeeper --partitions $partitions --topic $topic
    done < "$filename"
exit 0