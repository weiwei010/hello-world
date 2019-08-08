FROM alpine:3.9
WORKDIR usr/bin //容器路径
COPY ["./index.html","/usr/bin"] //第一个是服务器路劲，第二个是容器路劲
EXPOSE 9090
CMD /usr/bin/index。html //容器路径
ENV WELCOME "you are in my contrainer!"

