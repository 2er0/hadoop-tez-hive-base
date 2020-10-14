FROM dvoros/hive:3.1.1

RUN yum install -y python3 python3-pip screen vim less \
    && yum clean all && rm -rf /var/cache/yum

ENV HADOOP_CLASSPATH=/usr/java/default/lib/tools.jar:/usr/local/tez/conf:/usr/local/tez/*:/usr/local/tez/lib/*

EXPOSE 9870 8088 10000

