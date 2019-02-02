FROM alpine:latest

LABEL "com.github.actions.name"="RPC Ping"
LABEL "com.github.actions.description"="Ping your website url to search engine"
LABEL "com.github.actions.icon"="link"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/khanhicetea/gh-actions-rpc-ping"
LABEL "homepage"="https://github.com/khanhicetea/gh-actions-rpc-ping"
LABEL "maintainer"="KhanhIceTea <khanhicetea@gmail.com>"

LABEL "Name"="RPC Ping"
LABEL "Version"="0.1.0"

RUN apk add --no-cache \
	ca-certificates \
        curl

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
