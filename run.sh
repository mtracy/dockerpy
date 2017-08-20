#!/usr/bin/env bash
source confiv.env
docker build --build-arg APP_NAME=$APP_NAME -t $APP_NAME .
docker run -it -v $PWD:/usr/src/$APP_NAME --rm --name $CONTAINER_NAME $APP_NAME