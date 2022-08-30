# go-cqhttp-docker


## 容器构建

最好从官方仓库复制最新的二进制文件下载路径

```shell
docker build -f Dockerfile.[arch] \
             --build-arg BIN_LINK=[go-cqhttp binary download link] \     
             -t cam/cqhttp:0.1 .
```

## 第一次启动，创建配置文件

创建一个文件夹用于存放生成的device.json,config.yml,log等文件,在文件夹内运行

```shell
docker run --rm -it -v ${PWD}:/data cam/cqhttp:0.1
```


## 第二次启动,通过tx的登录验证

在文件夹内再次运行

`docker run --rm -it -v ${PWD}:/data cam/cqhttp:0.1`,根据提示通过验证


## 正式启动

在文件夹内运行

```shell
docker run -d --name cqhttp                     \
                --restart always                \
                -v ${PWD}:/data                 \
                -p <宿主机端口>:<配置文件内的端口>  \
                cam/cqhttp:0.1
```

或者使用 docker-compose.yml

```yml
services:
   go-cqhttp:
      image: cam/go-cqhttp:0.1
      container_name: cqhttp
      restart: always
      volumes:
        - .:/data
      ports:
        - <宿主机端口>:<配置文件内的端口>
      
      # 或者使用host模式  
      #network_mode: host
```