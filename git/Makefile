# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eyohn <sopka13@mail.ru>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/22 17:47:02 by eyohn             #+#    #+#              #
#    Updated: 2022/01/30 17:49:54 by eyohn            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			= srcs

SPACE			= 'inception'

all:			# build containers and run it
				(cd ${SRCS}; docker-compose build)
				(cd ${SRCS}; docker-compose -p ${SPACE} up)
				# (cd ${SRCS}; docker-compose -p ${SPACE} up --build -d)

stop:			# stop space_name
				(cd ${SRCS}; docker-compose -p ${SPACE} down)

re:				stop all