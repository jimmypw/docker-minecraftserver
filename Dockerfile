FROM centos
RUN yum install -y java-1.8.0-openjdk
RUN mkdir /minecraft
RUN mkdir /minecraft/data
ADD https://launcher.mojang.com/v1/objects/ed76d597a44c5266be2a7fcd77a8270f1f0bc118/server.jar /minecraft/server.jar
ADD startserver.sh /minecraft/startserver.sh
EXPOSE 25565/tcp
WORKDIR /minecraft/data
ENTRYPOINT /minecraft/startserver.sh
