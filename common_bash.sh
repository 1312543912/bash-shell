#!/bin/bash
funInit(){
  command=$2
  exec=$3
  nginx_bin="/usr/local/bin/nginx"
  if [[ $command == "nginx" && $exec == "start" ]]
  then
	funNgStart
  elif [[ $command == "nginx" && $exec == "reload" ]]
  then
	funNgReload
  elif [[ $command == "nginx" && $exec == "stop" ]]
  then
 	funNgStop 
  else
	echo "not found command"
  fi	
}

funNgStart(){
	echo "nginx start...."
	echo "spring"|sudo -S $nginx_bin
}

funNgReload(){
        echo "nginx reload...."
        echo "spring"|sudo -S $nginx_bin -s reload
}

funNgStop(){
        echo "nginx stop...."
        echo "spring"|sudo -S pkill -9 nginx
}
funInit $0 $1 $2 $3
