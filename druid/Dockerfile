FROM azul/zulu-openjdk:8

MAINTAINER Prajwal Tuladhar

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install build-essential

RUN apt-get -y update

RUN apt-get -y install curl python python-dev python-distribute python-pip mysql-client

RUN easy_install pip

RUN pip install supervisor

#ENV DRUID_VER 0.6.171 <-- this is not working due to MySQL's char set issue
ENV DRUID_VER 0.6.165

WORKDIR /druid

RUN curl -L "http://static.druid.io/artifacts/releases/druid-services-$DRUID_VER-bin.tar.gz" \
  | tar -xzvf - --strip=1

ADD supervisord.conf /etc/supervisor/supervisord.conf
ADD supervisor.init /etc/init.d/supervisord

RUN chmod +x /etc/init.d/supervisord

# Expose ports:
# - 8081: HTTP (coordinator)
# - 8082: HTTP (broker)
# - 8083: HTTP (historical)
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083

COPY entrypoint.sh /druid/entrypoint.sh

RUN chmod +x /druid/entrypoint.sh

ENTRYPOINT ["/druid/entrypoint.sh"]

#CMD export HOSTIP="$(resolveip -s $HOSTNAME)" && /etc/init.d/supervisord start
