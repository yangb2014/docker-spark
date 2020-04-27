#!/bin/sh

# start-master.sh uses SPARK_MATER_PORT and expects it to be an int, not a tcp:// url
export SPARK_MASTER_PORT=${SPARK_MASTER_SERVICE_PORT:-7077}

# spark-env.sh
cp $SPARK_HOME/conf/spark-env.sh.template  $SPARK_HOME/conf/spark-env.sh
echo -e "SPARK_MASTER_OPTS=\"-Dspark.deploy.defaultCores=2\"" >> $SPARK_HOME/conf/spark-env.sh

$SPARK_HOME/sbin/start-master.sh

# TODO: detect master exit
tail -F $SPARK_HOME/logs/*
