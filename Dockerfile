FROM alpine
RUN apk add --no-cache \
    alsa-lib \
    ca-certificates \
    firefox-esr \
    hicolor-icon-theme \
    mesa-dri-intel \
    mesa-gl \
    ttf-dejavu \
    dbus
CMD firefox
