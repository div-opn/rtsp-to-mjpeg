FROM ubuntu
RUN apt-get update; apt-get install --no-install-recommends -y vlc-bin vlc-plugin-base; apt-get clean; apt-get autoclean
COPY rtsp-to-mjpeg.sh /
RUN chmod 755 /rtsp-to-mjpeg.sh
USER daemon
ENTRYPOINT [ "/rtsp-to-mjpeg.sh" ]
EXPOSE 8080
