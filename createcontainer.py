#!/usr/bin/python
# Python code to create three containers in the blob storage account

import os, uuid, sys
from azure.storage.blob import BlockBlobService, PublicAccess

# Create the BlockBlockService that is used to call the Blob service for the storage account
block_blob_service = BlockBlobService(account_name=os.getenv('AZURE_STORAGE_ACCOUNT'), account_key=os.getenv('AZURE_STORAGE_ACCESS_KEY'))

# Create three containers, datauploaded, datavalidated and dataresult for use by functions and containers.
containername = ["datauploaded", "datavalidated", "dataresult"]

for index in range(len(containername)):
    try:
        status = block_blob_service.create_container(containername[index], public_access=PublicAccess.Container)
        print("Container %s"%containername[index] + " creation success status: %s"%status)
    except:
        print("Container %s"%containername[index] + " creation failed")