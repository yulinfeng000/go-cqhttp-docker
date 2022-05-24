# Step0

执行 docker build -t cam/go-cqhttp:0.1 .

# Step1

执行下列命令在data目录下生成config文件
`docker run -v "$PWD/data:/data" -it cam/go-cqhttp:0.1`

# Step2

根据自己需求修改config文件

# Step3

启动镜像
`docker-compose up -d`

# Step4

查看log，扫码登录并退出
`docker-compose logs`
