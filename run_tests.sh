#!/bin/bash

# JOB_NAME is the name of the project of this build. This is the name you gave your job. It is set up by Jenkins
PROJ="${JOB_NAME:-local}"
PROJ=`echo "$PROJ" | tr '[:upper:]' '[:lower:]'`  # ensure lowercase

DOCKER_FILES="-f docker-compose.yml"

# run tests
docker-compose -p ${PROJ} ${DOCKER_FILES}  run --rm web bash -c "yarn test:ci --watchAll=false"
