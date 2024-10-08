#!/bin/bash -x
DIR=$1
guser=$2
gport=$3
rcon=$4
rpass=$5
players=$6
seed=$7
hostname=$8
map_name=$9
cd $DIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DIR/RustDedicated_Data/Plugins/x86_64
##remove killed
#killall -9 RustDedicated
if [ -f ~/gamefiles/.killed  ]
then
rm ~/gamefiles/.killed
fi
##if RustDedicated already running kill it
##if pgrep Rust


$DIR/RustDedicated  +server.ip 0.0.0.0 +server.port $gport +server.tickrate 10  +rcon.ip 0.0.0.0 +rcon.port $rcon +rcon.password $rpass +rcon.web 1  +server.maxplayers $players +server.hostname "$hostname" +server.identity "my_server_identity" +server.level "$map_name" +server.seed $seed +server.worldsize 3000  +server.saveinterval 300 +server.globalchat true +server.description "server hosted on rustserver.io" +server.url "rustserver.io"   > ~/gamefiles/.gopt 2>&1

##if killed
touch ~/gamefiles/.killed
##exit online
##can't use sudo permission



