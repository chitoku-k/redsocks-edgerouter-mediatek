redsocks-edgerouter-mediatek
============================

1. Clone this repository
1. Build the Docker image
1. Extract the built binary
1. Copy it to `/usr/sbin` on your EdgeRouter

```bash
$ git clone https://github.com/chitoku-k/redsocks-edgerouter-mediatek
$ cd redsocks-edgerouter-mediatek
$ docker build .
$ docker create <image_id>
$ docker cp <container_id>:/redsocks/redsocks .
$ docker rm <container_id>
$ docker image rm <image_id>
```
