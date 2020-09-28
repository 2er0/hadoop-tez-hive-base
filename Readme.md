# Apache Docker image including Hadoop/Yarn/Tez/Hive

This is based on [dvoros/docker-hive](https://github.com/dvoros/docker-hive/tree/3.1.1) image including hadoop, yarn, tez and hive.

With Oracle JDK8 and Hadoop 3.1.1 and Tez 0.9.1

## Usage

```
docker run -it 2ero/hadoop-tez-hive-base:latest
# or
docker run -it -v $(pwd):/data -p 8088:8088 -p 9870:9870 -p 10000:10000 2ero/hadoop-tez-hive-base:latest
# starting an existing container
docker start -ai <CONTAINER-ID/NAME>
```

This will leave you with a bash prompt where a default beeline command to connect to
Hiveserver2 is added to the history:

```
beeline -u 'jdbc:hive2://localhost:10000' -n root
```

You should wait a few seconds for Hiveserver2 to initialize before connecting.

## Port mappings

```
8088 = Hadoop scheduler
9870 = Hadoop namenode information
10000 = Hive socket
```

## Paths

The following paths are set inside the image:

```
JAVA_HOME=/usr/java/default
HADOOP_HOME = /usr/local/hadoop
TEZ_HOME=/usr/local/tez
HIVE_HOME = /usr/local/hive
```

## Additional pre installations

- python 3 & pip 3
- screen