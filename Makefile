DCMP = docker-compose
APP = my_application
DCMP_EXEC_APP = ${DCMP} exec ${APP}
DCMP_RUN_APP = ${DCMP} run ${APP}

up:
	${DCMP} up

down:
	${DCMP} down

bash:
	${DCMP_EXEC_APP} bash

console:
	${DCMP_EXEC_APP} php -a

rebuild:
	make down
	${DCMP} build --no-cache
