#!/bin/bash

export storage=<storage account name>

az storage container create -n datauploaded --account-name $storage --public-access container
az storage container create -n datavalidated --account-name $storage --public-access container
az storage container create -n dataresult --account-name $storage --public-access container