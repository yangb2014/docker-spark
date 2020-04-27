# Apache Spark Jobserver images for Docker

# Build

* ```docker build -t <name>/spark-jobserver-base -f jobserver/Dockerfile.base jobserver```
* ```docker build -t <name>/spark-jobserver-yarn -f jobserver/Dockerfile.yarn jobserver```
* ```docker build -t <name>/spark-jobserver-standalone -f jobserver/Dockerfile.standalone jobserver```
