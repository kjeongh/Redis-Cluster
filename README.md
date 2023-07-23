# Redis-Cluster
Redis Cluter구성 실습

<br><br>

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

<br><br>

## 1.  docker-compose up --build 실행
3개의 master 컨테이너와 3개의 slave컨테이너 구성

CLUSTER ADD실습용 추가 master노드 포함 (클러스터 구성 스크립트에 포함되지 않음)

<br><br>

## 2. ./create-cluster.zsh 실행 (zsh쉘이 아닐 경우 파일 내 커맨드 직접 입력)
cluster 구성 확인 메세지에 'yes'응답 -> 클러스터 구성 완료

<br><br>

## 3. sample dataset 추가
https://github.com/redis-developer/redis-datasets 참고

<br><br>

## 4. redis-cli설치 후 데이터셋 추가


```
brew install redis-cli //컨테이너 내에서 접속시 필요 없음
```

dataset다운로드 위치에서 데이터 추가 스크립트 실행
```
➜  user-database git:(master) ✗ redis-cli -h localhost -p 7003 < ./import_users.redis
```

localhost:8001로 접속하여 모니터링


