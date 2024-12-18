#!/usr/bin/env bash

REPO_NAME=lfapprepo

cd app
docker build -t lfinterview .
docker tag lfinterview:latest ${REPO_NAME}.azurecr.io/lfinterview:latest
cd ..

az acr login --name $REPO_NAME
docker push ${REPO_NAME}.azurecr.io/lfinterview:latest