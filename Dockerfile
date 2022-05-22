FROM arm32v7/debian

RUN apt update &&  apt install -y ffmpeg wget

RUN wget -O cqhttp.tar.gz  https://github.com/Mrs4s/go-cqhttp/releases/download/v1.0.0-rc1/go-cqhttp_linux_armv7.tar.gz && tar -zvxf cqhttp.tar.gz && cp ./go-cqhttp /usr/bin/cqhttp

WORKDIR /data


ENTRYPOINT [ "/usr/bin/cqhttp" ]
