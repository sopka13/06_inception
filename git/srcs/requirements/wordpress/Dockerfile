FROM	debian:buster

RUN apt-get -y update
RUN apt-get -y install wget

# PHP
RUN apt-get -y install php php-fpm php-mysql

# phpMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz
RUN tar -xzvf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN mkdir /var/www && mkdir /var/www/server
RUN mv phpMyAdmin-5.0.4-all-languages /var/www/server/phpmyadmin
COPY ./conf/config.inc.php var/www/server/phpmyadmin/.

# wordpress
WORKDIR /var/www/server
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz
RUN chown -R www-data:www-data /var/www/server/wordpress
WORKDIR /var/www/server/wordpress
RUN mv * ../.
WORKDIR /
RUN rm -rf /var/www/server/wordpress
COPY ./conf/wp-config.php var/www/server/.

# END
EXPOSE 9000
# EXPOSE 3306

# Start
# COPY ./tools/start.sh /.
# CMD bash ./start.sh