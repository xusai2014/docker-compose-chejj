##

###

```shell
```shell
docker build -t nginx-proxy .
docker tag nginx-proxy:latest xusai2014/nginx-proxy
docker push xusai2014/nginx-proxy

docker build -t music-video .
docker tag music-video:latest xusai2014/music-video
docker push xusai2014/music-video
```