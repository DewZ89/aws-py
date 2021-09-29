#!/usr/bin/env bash

sudo apt-get update -y

sudo apt-get install -y git software-properties-common

sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo apt-get install -y python3.8 pip

sudo mkdir -p /var/app

cd /var/app

git clone https://github.com/DewZ89/aws-py.git .

pip3 install -r requirements.txt --no-cache-dir

uvicorn main:app --host=0.0.0.0 --port=80

