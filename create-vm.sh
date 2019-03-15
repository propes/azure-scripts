#!/bin/bash
# Sets up a basic vm in azure.

rg=fabrikam-node-staging-rg
vm=fabrikam-node-vm1

az group create \
    --location uksouth \
    --name $rg

az vm create \
    --resource-group $rg \
    --name $vm \
    --image UbuntuLTS \
    --admin-username azureuser \
    --generate-ssh-keys

