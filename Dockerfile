FROM telegraf:1.20.4-alpine

RUN apk update && \
    apk add --no-cache \ 
    lm-sensors \
    smartmontools \
	nvme-cli \
    rm -rf /var/cache/apk/* && rm -rf /tmp/*