#!/bin/bash

export connstring="$1"

docker run --name webui -d -p 8080:80 davevoyles/cash-forecasting-ui
docker run --name webcontrol -d -p 5001:80 -e Values__ConnString='$connstring' davevoyles/cash-forecasting-api
docker run --name cashforecasting -d -p 5000:5000 davevoyles/cash-forecasting-pred