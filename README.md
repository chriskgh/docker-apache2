# docker-apache2-redirect
from https://coreos.com/os/docs/latest/getting-started-with-docker.html

Docker project for setting up an apache2 server with a minimal working redirect configuration.


## build image
	./build.sh
	docker build -t ckapik/apache2 .
	 
## run container
	./run.sh
	docker run -it -p 80:80 ckapik/apache2
	docker run -d -p 80:80 ckapik/apache2 /usr/sbin/apache2ctl -D FOREGROUND
## run a 2nd container on port 8080
	docker run --rm --name=apache2b -it -p 8080:80 ckapik/apache2

## connect to container 
	docker exec -i -t apache2 /bin/bash
	docker exec -i -t 48a891e58a8c /bin/bash
