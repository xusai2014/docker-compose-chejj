
## 车唧唧服务是提供车资讯的开放平台

## 项目管理

采用项目集合形式管理，通过git 子模块关联实现部署的一致性
```shell
git submodule add [git url]
git diff --cached --submodule
git submodule update
```

## 服务监控
grafana + prometheus

collect OS data
collect docker data

```shell
vi /etc/docker/daemon.json
# daemon.json
{
  "metrics-addr" : "127.0.0.1:9323",
  "experimental" : true
}

# update prometheus yml

 static_configs:
      - targets: ['host.docker.internal:9323']

```

## 定时任务

性能分析 - CPU负载高

解决方案 - CPU Limit & replace node-schedule with pm cron start



###
服务部署
```shell
docker-compose -f ./docker-compose-chejj/docker-compose.yml up -d
docker-compose -f ./docker-compose-chejj/docker-compose.yml down api_service
docker-compose -f ./docker-compose-chejj/docker-compose.yml pull nginx

```


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

```
sudo sed -e 's|^mirrorlist=|#mirrorlist=|g' -e 's|^#baseurl=http://mirror.centos.org/$contentdir|baseurl=https://mirrors.ustc.edu.cn/centos|g' -i.bak /etc/yum.repos.d/CentOS-Linux-AppStream.repo /etc/yum.repos.d/CentOS-Linux-BaseOS.repo /etc/yum.repos.d/CentOS-Linux-Extras.repo /etc/yum.repos.d/CentOS-Linux-PowerTools.repo /etc/yum.repos.d/CentOS-Linux-Plus.repo

yum install https://download.docker.com/linux/fedora/30/x86_64/stable/Packages/containerd.io-1.2.6-3.3.fc30.x86_64.rpm
yum -y  install docker-ce --nobest
```
