#!/bin/sh

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS \`${WP_DB_NAME}\`"
mysql -e "CREATE USER IF NOT EXISTS \`${WP_USER}\`@'%' IDENTIFIED BY '${WP_USER_PASSWORD}'"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO \`${WP_ADMIN}\`@'%' IDENTIFIED BY '${WP_ADMIN_PASSWORD}'"
mysql -e "GRANT ALL PRIVILEGES ON \`${WP_DB_NAME}\`.* TO \`${WP_USER}\`@'%'"
mysql -e "FLUSH PRIVILEGES"

service mysql stop

exec /usr/sbin/mysqld -u root