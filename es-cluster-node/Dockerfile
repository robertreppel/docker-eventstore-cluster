FROM ubuntu:14.04
EXPOSE 1111
EXPOSE 1112
EXPOSE 2113
EXPOSE 2114
EXPOSE 30777
RUN echo "* hard nofile 20000" | tee -a /etc/security/limits.conf
RUN echo "* soft nofile 20000" | tee -a /etc/security/limits.conf
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl dnsutils -y
RUN curl -s https://packagecloud.io/install/repositories/EventStore/EventStore-OSS/script.deb.sh | bash
RUN apt-get install eventstore-oss=3.9.2 -y
RUN chmod +x start-eventstore.sh
ENTRYPOINT ./start-eventstore.sh


