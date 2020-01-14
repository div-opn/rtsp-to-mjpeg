FROM ubuntu
RUN apt-get update; apt-get install --no-install-recommends -y vlc-bin vlc-plugin-base; apt-get clean; apt-get autoclean
RUN useradd -ms /bin/bash streamer
WORKDIR /home/streamer
COPY rtsp-to-mjpeg.sh /home/streamer/
USER streamer
ENTRYPOINT [ "/home/streamer/rtsp-to-mjpeg.sh" ]
EXPOSE 8080
