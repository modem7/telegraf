# syntax = docker/dockerfile:latest

FROM telegraf:1.26.0-alpine@sha256:07cde4c35d7b0a68485daae6f2749b7743a26d0ff01128869b9c525cd7026a53

RUN apk update && \
    apk add --no-cache \ 
    lm-sensors \
    smartmontools \
	nvme-cli \
	sudo \
    rm -rf /var/cache/apk/* && rm -rf /tmp/*