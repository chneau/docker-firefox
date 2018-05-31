FROM alpine
RUN apk add --no-cache \
    firefox-esr \
    ttf-dejavu \
    dbus
ENTRYPOINT ["/usr/bin/firefox"]
