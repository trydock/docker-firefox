# Mozilla Firefox

This is a container image for Firefox Browser.

We push this image to : `https://hub.docker.com/r/trydock/dkr-firefox`

You can find all tags : `https://hub.docker.com/r/trydock/dkr-firefox/tags`

## Sample Compose file.

You may use `docker-compose` or `podman-compose` for runing this container.

Sample `Compose` config file:

```
version: "3"
services:
  app:
    image: trydock/dkr-firefox:v0.0.5
    environment:
      - DISPLAY=${DISPLAY}
    shm_size: '256mb'
    cap_add:
      - NET_ADMIN
    devices:
      - /dev/net/tun
    volumes:
      - /tmp/.X11-unix:/tmp/.X11-unix
```

## Source

based on : https://www.omgubuntu.co.uk/2022/04/how-to-install-firefox-deb-apt-ubuntu-22-04

### Additional References:

 - https://gursimarsm.medium.com/run-gui-applications-in-a-docker-container-ca625bad4638
