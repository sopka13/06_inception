# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eyohn <sopka13@mail.ru>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/22 17:47:02 by eyohn             #+#    #+#              #
#    Updated: 2022/01/31 18:37:35 by eyohn            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			= srcs

SPACE			= 'inception'

all:			# build containers and run it
				docker-compose -f srcs/docker-compose.yml build
				docker-compose -f srcs/docker-compose.yml -p ${SPACE} up
				# (cd ${SRCS}; docker-compose -p ${SPACE} up --build -d)

stop:			# stop space_name
				(cd ${SRCS}; docker-compose -p ${SPACE} down)

re:				stop all