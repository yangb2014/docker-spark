#!/bin/sh

# name resolution for spark-master
echo "${SPARK_MASTER_SERVICE_HOST:-$1} spark-master" >> /etc/hosts

# because the hostname only resolves locally
export SPARK_LOCAL_HOSTNAME=$(hostname -i)

$SPARK_HOME/sbin/start-slave.sh  spark://spark-master:7077 ${SPARK_WORKER_START_ARGS}

# TODO: detect slave exit
tail -F $SPARK_HOME/logs/*
