# syntax = docker/dockerfile:latest

FROM telegraf:1.29.0-alpine

RUN apk update && \
    apk add --no-cache \ 
    lm-sensors \
    smartmontools \
	nvme-cli \
	sudo \
    rm -rf /var/cache/apk/* && rm -rf /tmp/*