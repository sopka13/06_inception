FROM	debian:buster

RUN apt-get -y update
RUN apt-get -y install wget

# Mariadb
RUN apt-get -y install software-properties-common dirmngr
RUN apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
RUN add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.docker.ru/mariadb/repo/10.5/debian buster main'
RUN apt-get -y update
RUN apt-get -y install mariadb-server
COPY ./conf/my.cnf /etc/mysql/my.cnf
RUN chmod +rw /etc/mysql/my.cnf
# COPY ./data/test_db.sql ./.
# RUN service mariadb start && mysql < test_db.sql

# END
EXPOSE 3306

# Start
RUN cd /
COPY ./tools/start.sh .
ENTRYPOINT sh ./start.sh