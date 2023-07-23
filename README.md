# Redis-Cluster
Redis Cluter구성 실습

## 디렉토리 구조
Redis-Cluster
```
.
├── cluster-create.zsh
├── docker-compose.yml
├── redis-datasets (아래 링크에서 추가로 다운로드 필요)
│   └── user-database
│       ├── README.md
│       └── import_users.redis
├── redis-master-1.conf
├── redis-master-2.conf
├── redis-master-3.conf
├── redis-master-4.conf
├── redis-slave-1.conf
├── redis-slave-2.conf
├── redis-slave-3.conf
```

## 1.  docker-compose up --build 실행
## 2. ./create-cluster.zsh 실행 (zsh쉘이 아닐 경우 파일 내 커맨드 직접 입력)
cluster 구성 확인 메세지에 'yes'응답 -> 클러스터 구성 완료

##3. sample dataset 추가
https://github.com/redis-developer/redis-datasets

localhost:8081로 접속하여 모니터링


