FROM alpine:3.9
WORKDIR usr/bin //容器路径
COPY ["./hello","/usr/bin"] //第一个是服务器路劲，第二个是容器路劲
EXPOSE 80
CMD /usr/bin/hello //容器路径
ENV WELCOME "you are in my contrainer!"

