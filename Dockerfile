FROM alpine:latest

RUN apk add --no-cache \
		ca-certificates \
        curl \
        --no-document

ENTRYPOINT ["/entrypoint.sh"]