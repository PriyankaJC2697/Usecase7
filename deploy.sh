#!/bin/bash

# Parameters
RESOURCE_GROUP=$1
DEPLOYMENT_NAME=$2
ARM_TEMPLATE_FILE=$3
LOCATION=$4

# Deploy ARM Template
az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --name $DEPLOYMENT_NAME \
  --template-file $ARM_TEMPLATE_FILE \
  --parameters location=$LOCATION
