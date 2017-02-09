#!/bin/bash  

export shared_folder="$(pwd)/indocker"

export container_port=80
export container_name=apache2


if [ ! -z "$1" ] ; then
	container_port=$1
fi
if [ ! -z "$2" ] ; then
	container_name=$2
fi



echo "starting docker container with following command line:"
echo "docker run -v $shared_folder:/var/www/html/fromhost --rm --name=$container_name -it -p $container_port:80 ckapik/apache2"
echo "open http://localhost:$container_port/fromhost/index.html after the container is started"

docker run -v $shared_folder:/var/www/html/fromhost --rm --name=$container_name -it -p $container_port:80 ckapik/apache2
