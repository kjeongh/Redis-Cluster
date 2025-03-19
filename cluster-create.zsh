#!/bin/zsh

# Redis 클러스터 구성
# docker-compose up 이후 클러스터 구성 스크립트를 실행합니다.

# Master 구성
docker exec -it redis-master-1 redis-cli --cluster create redis-master-1:7001 redis-master-2:7002 redis-master-3:7003 &&

# Slave 노드 추가
docker exec -it redis-master-1 redis-cli --cluster add-node redis-slave-1:7101 redis-master-1:7001 --cluster-slave &&
docker exec -it redis-master-1 redis-cli --cluster add-node redis-slave-2:7102 redis-master-2:7002 --cluster-slave &&
docker exec -it redis-master-1 redis-cli --cluster add-node redis-slave-3:7103 redis-master-3:7003 --cluster-slave
