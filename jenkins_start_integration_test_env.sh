#!/bin/bash

# JOB_NAME is the name of the project of this build. This is the name you gave your job. It is set up by Jenkins
PROJ="${JOB_NAME:-local}"
PROJ=`echo "$PROJ" | tr '[:upper:]' '[:lower:]'`  # ensure lowercase

DOCKER_FILES="-f docker-compose.yml"

## TODO:
# kill all containers with docker-compose -p PROJ ps -q
# starting containers should do a migration

# Remove Previous Stack
docker-compose -p ${PROJ} ${DOCKER_FILES} rm -f

# Starting new stack environment
docker-compose -p ${PROJ} ${DOCKER_FILES}  run --rm web bash -c "yarn install --frozen-lockfile"
docker-compose -p ${PROJ} ${DOCKER_FILES}  run --rm web bash -c "yarn test:ci --watchAll=false"
