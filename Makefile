.SILENT:
.ONESHELL:
.NOTPARALLEL:
.EXPORT_ALL_VARIABLES:
.PHONY: build run exec prepareX11

run: exec

prepareX11:
	sudo xhost local:root

exec: prepareX11
	docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$$DISPLAY --device /dev/snd firefox

build:
	docker build -t firefox .
