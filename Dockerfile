FROM alpine:latest

RUN apk add --no-cache \
		ca-certificates \
        curl \
        --no-document

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]