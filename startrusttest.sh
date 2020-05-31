#!/bin/bash -x
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
guser=$1
gport=$2
rcon=$3
rpass=$4
players=$5
seed=$6
cd $DIR
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DIR/RustDedicated_Data/Plugins/x86_64
$DIR/RustDedicated  +server.ip 0.0.0.0 +server.port $gport +server.tickrate 10  +rcon.ip 0.0.0.0 +rcon.port $rcon +rcon.password $rpass +rcon.web 1  +server.maxplayers $players +server.hostname "rustserver.io" +server.identity "my_server_identity" +server.level "Procedural Map" +server.seed $seed  +server.saveinterval 300 +server.globalchat true +server.description "server hosted on rustserver.io" +server.url "rustserver.io"  
-logfile "logrust.log"
