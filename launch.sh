#!/bin/sh

touch eula.txt
echo "eula=$EULA">> eula.txt
echo $SERVER_OP >> ops.txt
sed -i.orig -e "s/^motd=.*/motd=$SERVER_MOTD/" -e "s/^pvp=.*/pvp=$SERVER_PVP/" /minecraft/server.properties

chmod +x LaunchServer.sh
./LaunchServer.sh