#!/bin/bash

cat <<EOF > eula.txt
#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula).
#Sat May 18 18:54:04 UTC 2019
eula=true
EOF

java -Xmx1024M -Xms1024M -jar /minecraft/server.jar
