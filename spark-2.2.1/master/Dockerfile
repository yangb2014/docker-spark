FROM mattf/spark-base:2.2.1

MAINTAINER Matthew Farrellee <matt@cs.wisc.edu>

ADD start.sh /

# 6066: spark.master.rest.port
# 7077: Spark Master
# 8080: Spark Master webUI
# 18080: Spark history server webUI
EXPOSE 6066 7077 8080

ENTRYPOINT ["/start.sh"]
