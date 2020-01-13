FROM ubuntu
RUN apt update; apt install -y vlc
USER daemon
ENTRYPOINT [ "vlc" ]
