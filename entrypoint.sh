#!/bin/sh

ENDPOINT=${RPC_ENDPOINT:-http://rpc.pingomatic.com/}

curl -vvv --request POST \
    --url "$ENDPOINT" \
    --header "content-type: application/xml" \
    --data "<?xml version=\"1.0\"?><methodCall><methodName>weblogUpdates.ping</methodName><params><param><value>${PING_TITLE}</value></param><param><value>${PING_URL}</value></param></params></methodCall>"
