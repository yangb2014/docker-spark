FROM centos:latest

RUN yum clean all && yum install -y java-1.8.0-openjdk.x86_64 && rm -rf /var/cache/yum/*

ENV SPARK_HOME /usr/local/spark-2.2.1
RUN curl -L --retry 3 \
  "http://archive.apache.org/dist/spark/spark-2.2.1/spark-2.2.1-bin-hadoop2.7.tgz" \
  | gunzip \
  | tar x -C /usr/local \
 && mv /usr/local/spark-2.2.1-bin-hadoop2.7 $SPARK_HOME \
 && ln -s $SPARK_HOME /usr/local/spark \
 && rm -f $SPARK_HOME/lib/spark-examples-*.jar

ENV PATH $PATH:$JAVA_HOME/bin:$SPARK_HOME/bin:$SPARK_HOME/sbin 

