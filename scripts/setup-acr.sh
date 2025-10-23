#!/bin/bash
set -euo pipefail
ACR_NAME=${1:-youracrname}
RESOURCE_GROUP=${2:-knowledgecity-rg}
az acr create --resource-group $RESOURCE_GROUP --name $ACR_NAME --sku Standard --admin-enabled true
echo "ACR created: $ACR_NAME"
