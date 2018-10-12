#!/bin/bash

export connstring="$1"

docker run --name webui -d -p 8080:80 davevoyles/docker-webui
docker run --name webcontrol -d -p 5001:80 -e Values__ConnString='$connstring' davevoyles/webcontrol
docker run --name cashforecasting -d -p 5000:5000 davevoyles/docker-cash-forecasting-pred