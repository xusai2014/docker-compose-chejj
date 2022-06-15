#! /bin/sh
ip -4 route list match 0/0 | awk '{print $3 " host.docker.internal"}' >> /etc/hosts
