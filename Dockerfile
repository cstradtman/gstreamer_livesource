FROM ubuntu
COPY gstream .
RUN  \ 
apt-get update  && \ 
apt-get dist-upgrade -y && \
apt-get install -y gstreamer1.0-plugins-ugly libgstreamer-plugins-bad1.0-0 libgstreamer-plugins-good1.0-0 \
                   gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-libav gstreamer1.0-rtsp gstreamer1.0-plugins-bad && \
                   chmod 777 /gstream && \
apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* 

EXPOSE 8080/tcp
EXPOSE 1935/tcp


STOPSIGNAL SIGTERM

CMD ["/gstream"]

