FROM azul/zulu-openjdk:8

MAINTAINER Prajwal Tuladhar

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install build-essential

RUN apt-get -y update

RUN apt-get -y install wget docker.io

RUN apt-get -y install openssh-server

RUN wget -q -O - http://mirror.nexcess.net/apache/kafka/0.8.2.0/kafka_2.9.1-0.8.2.0.tgz | tar -xzf - -C /opt

VOLUME ["/kafka"]

ENV KAFKA_HOME /opt/kafka_2.9.1-0.8.2.0/

ADD start-kafka.sh /usr/bin/start-kafka.sh

CMD start-kafka.sh
