FROM alpine:3.3

RUN apk add --update socat && \
    rm -rf /var/cache/apk/* && \
    adduser -u 500 -h / -D socat

USER socat
ENTRYPOINT ["/usr/bin/socat"]
