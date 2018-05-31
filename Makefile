.SILENT:
.ONESHELL:
.NOTPARALLEL:
.EXPORT_ALL_VARIABLES:
.PHONY: build run exec prepareX11

run: exec

prepareX11:
	xhost local:root

exec: prepareX11
	docker run --rm -it \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-e DISPLAY=$$DISPLAY \
	--shm-size 1g \
	firefox

build:
	docker build -t firefox .
