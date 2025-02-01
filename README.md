# Meeting minutes

## Description

This is an AI application using local (ollama)[https://ollama.com/] LLMs and python [langchain](https://python.langchain.com/docs/introduction/) to summary meeting text record. 

## Http proxy if public network unavailable

### On Windows

1. search **Watt Toolkit** in Microsoft Store then install.
2. check the Github speed service
3. select PAC/System mode to start network speed(the default proxy port is 26561 in proxy settings)

## Git

### Config if public network unavailable

- git config --global http.proxy http://127.0.0.1:26561
- git config --global https.proxy http://127.0.0.1:26561
- git config --global http.sslverify false
```
$ git config --global -l
user.email=1872901475@qq.com
user.name=vanglin
http.proxy=http://127.0.0.1:26561
http.sslverify=false
https.proxy=http://127.0.0.1:26561
```

### Repo

https://github.com/vanglin/meetingMinutes.git

## Docker image

### Repo

1. register to aliyun docker registry
```
docker login --username=aliyun0170144610 crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com
```
2. pull
```
docker pull crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com/aliyun01701/mm:[version]
```
3. push
```
docker login --username=aliyun0170144610 crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com
docker tag [ImageId] crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com/aliyun01701/mm:[version]
docker push crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com/aliyun01701/mm:[version]
```

### Run

**Public network available**

docker run -it --rm --name zhenxue-ubuntu --network host -v D:\work\meetingSummary:/data/zhenxue/meetingSummary -w /data/zhenxue/meetingSummary crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com/aliyun01701/mm:001

**Public network unavailable**

docker run -it --rm --name zhenxue-ubuntu --network host -v D:\work\meetingSummary:/data/zhenxue/meetingSummary -w /data/zhenxue/meetingSummary --env HTTP_PROXY="http://host.docker.internal:26561" --env HTTPS_PROXY="http://host.docker.internal:26561" crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com/aliyun01701/mm:001

### Build

docker build -t crpi-j7n4vxr83yha2gn2.cn-shanghai.personal.cr.aliyuncs.com/aliyun01701/mm:001 .
