FROM alpine:3.1

COPY root /
RUN apk --update add lighttpd lighttpd-mod_webdav && \
    rm -rf /var/cache/apk/*

EXPOSE 80
VOLUME /data

CMD ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
