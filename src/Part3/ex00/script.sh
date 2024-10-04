#!/bin/bash

# install Docker
sudo apt-get update
sudo apt-get -y install docker.io

# docker swarm
TOKEN=$(sudo docker swarm init --advertise-addr 192.168.56.10:2377)
TOKEN_NEW=$(echo -n $(echo -n $TOKEN | grep -m 1 -o 'token.*' | cut -d ' ' -f 2- | awk '{printf($1)}'))

# worker-1
ssh vagrant@192.168.56.12 'sudo apt-get update && sudo apt-get install docker.io -y'
ssh vagrant@192.168.56.12 "sudo docker swarm join --token ${TOKEN_NEW} 192.168.56.10:2377"

# worker-2
ssh vagrant@192.168.56.13 'sudo apt-get update && sudo apt-get install docker.io -y'
ssh vagrant@192.168.56.13 "sudo docker swarm join --token ${TOKEN_NEW} 192.168.56.10:2377"

