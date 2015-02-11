FROM infynyxx/storm
MAINTAINER Prajwal Tuladhar

EXPOSE 6700
EXPOSE 6701
EXPOSE 6702
EXPOSE 6703
EXPOSE 8000

RUN /usr/bin/config-supervisord.sh supervisor
RUN /usr/bin/config-supervisord.sh logviewer

CMD /etc/init.d/supervisord start
