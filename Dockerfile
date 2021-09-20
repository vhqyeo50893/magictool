FROM alpine:latest

ADD magic.sh /opt/magic.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/magic.sh

ENTRYPOINT ["sh", "-c", "/opt/magic.sh"]
