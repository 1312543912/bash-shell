#!/bin/bash
funInit(){
  echo "funInit"
  command=$2
  exec=$3
  nginx_bin="/usr/local/bin/nginx"
  if [[ $command == "nginx" && $exec == "start" ]]
  then
	echo "nginx start success"
	echo "spring"|sudo -S $nginx_bin
  fi	
}

funInit $0 $1 $2 $3 
