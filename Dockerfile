FROM dvoros/hive:3.1.1

RUN yum install -y python3 python3-pip screen \
    && yum clean all && rm -rf /var/cache/yum

EXPOSE 9870, 8088, 10000

