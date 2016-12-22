from https://coreos.com/os/docs/latest/getting-started-with-docker.html

build image:
	./build
	docker build -t ckapik/apache2 .

run container: 
	./run.sh
	docker run -it -p 80:80 ckapik/apache2
	docker run -d -p 80:80 ckapik/apache2 /usr/sbin/apache2ctl -D FOREGROUND

connect to container: 
	docker exec -i -t apache2 /bin/bash
	docker exec -i -t 48a891e58a8c /bin/bash
