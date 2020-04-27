# docker images for Apache Spark   
https://github.com/mattf/docker-spark   
https://github.com/sequenceiq/docker-spark   
   
# Build   
   
* ```docker build --rm -t <name>/spark-base base```
* ```docker build --rm -t <name>/spark-master master```
* ```docker build --rm -t <name>/spark-worker worker```
   
# Use   
   
* ```docker run -d -p 8080:8080 -p 7077:7077 -p 6066:6066 --name spark-master --hostname spark-master  -v /tmp/docker-spark-master:/tmp  <name>/spark-master:2.2.1```
* ```docker run -d -p 8081:8081 --name spark-worker1 --hostname spark-worker1  -v /tmp/docker-spark-worker:/tmp -e SPARK_MASTER_SERVICE_HOST="10.0.251.102" -e SPARK_WORKER_START_ARGS="--cores 4 --memory 4g --work-dir /tmp/spark-work" -e SPARK_WORKER_OPTS="-Dspark.worker.cleanup.enabled=true -Dspark.worker.cleanup.interval=1800 -Dspark.worker.cleanup.appDataTtl=86400" <name>/spark-worker:2.2.1```
* ```docker run -d -p 8082:8081 --name spark-worker2 --hostname spark-worker2  -v /tmp/docker-spark-worker:/tmp -e SPARK_MASTER_SERVICE_HOST="10.0.251.102" -e SPARK_WORKER_START_ARGS="--cores 4 --memory 4g --work-dir /tmp/spark-work" -e SPARK_WORKER_OPTS="-Dspark.worker.cleanup.enabled=true -Dspark.worker.cleanup.interval=1800 -Dspark.worker.cleanup.appDataTtl=86400" <name>/spark-worker:2.2.1```
* ```docker run -d -p 8083:8081 --name spark-worker3 --hostname spark-worker3  -v /tmp/docker-spark-worker:/tmp -e SPARK_MASTER_SERVICE_HOST="10.0.251.102" -e SPARK_WORKER_START_ARGS="--cores 4 --memory 4g --work-dir /tmp/spark-work" -e SPARK_WORKER_OPTS="-Dspark.worker.cleanup.enabled=true -Dspark.worker.cleanup.interval=1800 -Dspark.worker.cleanup.appDataTtl=86400" <name>/spark-worker:2.2.1```
   
