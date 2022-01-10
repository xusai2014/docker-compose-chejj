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

docker build -t www .
docker tag www:latest xusai2014/www
docker push xusai2014/www

docker build -t api-service .
docker tag api-service:latest xusai2014/api-service
docker push xusai2014/api-service
```