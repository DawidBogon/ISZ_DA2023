#!/usr/bin/env bash

SCRIPT=$(realpath "$0")
SCRIPT_DIR_PATH=$(dirname "$SCRIPT")

PROJECT_ROOT_ABS_PATH=$(realpath "$SCRIPT_DIR_PATH/../")
#echo $SCRIPT
#echo $SCRIPT_DIR_PATH
# echo $PROJECT_ROOT_ABS_PATH
docker run -ti -d --name DA2023 -v $PROJECT_ROOT_ABS_PATH:/root/ISZ_DA iszagh/cmdstan_python:1