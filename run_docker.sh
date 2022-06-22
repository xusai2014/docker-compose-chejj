#!/bin/bash

# cp run_docker.sh /etc/init.d/
# chmod +x run_docker.sh
systemctl restart docker
cd ~
docker-compose -f ./docker-compose-chejj/docker-compose.yml pull
docker-compose -f ./docker-compose-chejj/docker-compose.yml up -d
