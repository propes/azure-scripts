#!/bin/bash
# Sets up an AKS cluster on azure.

rg=aks-demo-rg
aks=demo-aks

az group create \
    --location uksouth \
    --name $rg

az aks create \
    --resource-group $rg \
    --name $aks \
    --node-count 1 \
    --enable-addons monitoring \
    --generate-ssh-keys
