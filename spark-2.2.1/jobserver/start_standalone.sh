#!/bin/sh

# name resolution for spark-master
echo "${SPARK_MASTER_SERVICE_HOST:-$1} spark-master" >> /etc/hosts

# start H2 db
java -cp /app/libs/h2-1.3.176.jar org.h2.tools.Server &

# start history server
cp $SPARK_HOME/conf/spark-defaults.conf.template $SPARK_HOME/conf/spark-defaults.conf
echo "spark.eventLog.enabled  true" >> $SPARK_HOME/conf/spark-defaults.conf
mkdir -p /tmp/spark-events
chmod 777 /tmp/spark-events
$SPARK_HOME/sbin/start-history-server.sh

# start job server
$JOBSERVER_HOME/server_start.sh

