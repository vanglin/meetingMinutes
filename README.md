# My AI App

## Run docker

docker run -it --rm --name zhenxue-ubuntu --network host -v D:\work\langchain-app:/data/zhenxue/langchain-app -w /data/zhenxue/langchain-app ubuntu

## Install dependencies

```
You can edit [Dockerfile](./Dockerfile) then execute below command to build docker image
docker build -t <name>:<tag> .

For example, docker build -t ubuntu:zhenxue .
```

## Store docker image

Aliyun account: 1431737897436256 / Tom'sdocker1
accelerator mirrors: https://x96o636j.mirror.aliyuncs.com
