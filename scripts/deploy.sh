#!/bin/bash

export connstring="$1"
export AZURE_STORAGE_ACCOUNT="$2"
export AZURE_STORAGE_ACCESS_KEY="$3"

echo $(date) " - Script Starting"

echo $(date) " - Create blob containers"
python createcontainer.py

echo $(date) " - Starting cash-forecasting-ui container exposed on port 8080"
docker run --name webui -d -p 8080:80 davevoyles/cash-forecasting-ui
if [ $? -eq 0 ]
then
    echo "cash-forecasting-ui container started successfully"
else
    echo "cash-forecasting-ui container failed to start"
fi

echo $(date) " - Starting cash-forecasting-api container exposed on port 5001"
docker run --name webcontrol -d -p 5001:80 -e Values__ConnString='$connstring' davevoyles/cash-forecasting-api
if [ $? -eq 0 ]
then
    echo "cash-forecasting-api container started successfully"
else
    echo "cash-forecasting-api container failed to start"
fi

echo $(date) " - Starting cash-forecasting-pred container exposed on port 5000"
docker run --name cashforecasting -d -p 5000:5000 davevoyles/cash-forecasting-pred
if [ $? -eq 0 ]
then
    echo "cash-forecasting-pred container started successfully"
else
    echo "cash-forecasting-pred container failed to start"
fi

echo $(date) " - Listing running containers"
docker ps

echo $(date) " - Script complete"