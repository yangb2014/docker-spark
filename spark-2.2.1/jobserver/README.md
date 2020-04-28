# Apache Spark Jobserver images for Docker (Deprecated)

# Build

* ```docker build -t <name>/spark-jobserver-base -f jobserver/Dockerfile.base jobserver```
* ```docker build -t <name>/spark-jobserver-yarn -f jobserver/Dockerfile.yarn jobserver```
* ```docker build -t <name>/spark-jobserver-standalone -f jobserver/Dockerfile.standalone jobserver```

# Run

* ```docker run -d -p 8092:8092 -p 32456-32472:32456-32472 --net=host mattf/spark-jobserver-yarn```
* ```docker run -d -p 8092:8092 -p 18080:18080 mattf/spark-jobserver-standalone <master_ip>```
* ```docker run -d -p 8092:8092 -p 18080:18080 -e SPARK_MASTER_SERVICE_HOST="10.0.251.102" mattf/spark-jobserver-standalone```

