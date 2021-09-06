FROM debian:buster-slim
WORKDIR /root
RUN apt-get update && apt-get install -y wget
RUN sed -i -E '/contrib/!s/^(deb.*)/\1 contrib/' /etc/apt/sources.list
RUN wget https://packages.ntop.org/apt-stable/buster/all/apt-ntop-stable.deb 
RUN apt-get install -y ./apt-ntop-stable.deb
RUN apt-get clean all && apt-get update
RUN apt-get install -y pfring-dkms nprobe ntopng n2disk cento
RUN apt-get install -y redis
COPY startup.sh startup.sh
ENTRYPOINT ["/root/startup.sh"]
