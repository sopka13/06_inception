# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eyohn <sopka13@mail.ru>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/22 17:47:02 by eyohn             #+#    #+#              #
#    Updated: 2022/02/03 09:57:51 by eyohn            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			= srcs

SPACE			= 'inception'

all:			# build containers and run it
				docker-compose -f srcs/docker-compose.yml build
				docker-compose -f srcs/docker-compose.yml up
				# docker-compose -f srcs/docker-compose.yml -p ${SPACE} up
				# (cd ${SRCS}; docker-compose -p ${SPACE} up --build -d)

stop:			# stop space_name
				(cd ${SRCS}; docker-compose down)
				# (cd ${SRCS}; docker-compose -p ${SPACE} down)

clear:			# clear all data
				docker rm $(docker ps -a -q)
				docker rmi -f $(docker images -qa)
				docker volume rm $(docker volume ls -q)
				docker system prune -a --force

re:				stop all