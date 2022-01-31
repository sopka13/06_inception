#!/bin/sh

service mariadb start

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`"
mariadb -e "CREATE USER IF NOT EXISTS \`${WP_USER}\`@'%' IDENTIFIED BY '${WP_USER_PASSWORD}'"
mariadb -e "GRANT ALL PRIVILEGES ON *.* TO \`${WP_ADMIN}\`@'%' IDENTIFIED BY '${WP_ADMIN_PASSWORD}'"
mariadb -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${WP_USER}\`@'%'"
mariadb -e "FLUSH PRIVILEGES"

service mariadb stop

exec /usr/sbin/mariadb -u root