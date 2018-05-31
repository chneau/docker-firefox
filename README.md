# docker-firefox
An example of how to containerise a GUI. Works with Ubuntu 16.04 at least.  

# run

```bash
make build # to build the docker image
make prepareX11 # to prepare the link between X11 of the host and X11 of the container
make exec # start firefox
make run # does prepareX11 then exec
make # default to run
```

# sources
Greatly inspired by https://github.com/jessfraz/dockerfiles  
