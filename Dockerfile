FROM ubuntu:latest

RUN \
	apt-get update && \
	apt-get install -y vim && \
	apt-get install -y apache2 && \
	ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load && \
	echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf && \
 	a2enconf fqdn



COPY src/html/* /var/www/html/
COPY src/conf/000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

ENTRYPOINT ["/bin/bash", "usr/sbin/apache2ctl", "-D", "FOREGROUND"]
# geht ned ... ENTRYPOINT ["/bin/bash", "service", "apache2", "start"]