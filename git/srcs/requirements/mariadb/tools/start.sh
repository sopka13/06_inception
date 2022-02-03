#!/bin/sh

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS '${WP_DB_NAME}'"
mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' WITH GRANT OPTION"
mysql -e "FLUSH PRIVILEGES"

service mysql stop

./usr/bin/mysqld_safe