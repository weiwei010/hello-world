FROM alpine:latest
//WORKDIR /home/weiwei/ //容器路径
COPY ["./hello-world","/usr/bin"] //第一个是服务器路劲，第二个是容器路劲
EXPOSE 8085
CMD /usr/bin/hello-world //容器路径
ENV WELCOME "you are in my contrainer!"
