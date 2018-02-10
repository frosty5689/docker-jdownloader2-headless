FROM openjdk:8-jre-alpine

MAINTAINER frosty5689 <frosty5689@gmail.com>

RUN apk add --no-cache --update wget

# Create directory, downloader JD" and start JD2 for the initial update and creation of config files.
RUN \
	mkdir -p /opt/JDownloader/ && \
	wget -O /opt/JDownloader/JDownloader.jar --user-agent="https://hub.docker.com/r/frosty5689/jdownloader2-headless/" --progress=bar:force http://installer.jdownloader.org/JDownloader.jar && \
	java -Djava.awt.headless=true -jar /opt/JDownloader/JDownloader.jar


ADD run/* /opt/JDownloader/

VOLUME ["/opt/JDownloader/cfg", "/root/Downloads"]

# Run this when the container is started
CMD /opt/JDownloader/start.sh
