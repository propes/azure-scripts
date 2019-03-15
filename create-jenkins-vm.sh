#!/bin/bash
# Sets up a jenkins vm in azure.

rg=jenkins-rg
vm=jenkins-vm1

az vm create /
  --resource-group $rg /
  --name $vm /
  --image UbuntuLTS /
  --admin-username azureuser /
  --generate-ssh-keys /
  --custom-data cloud-init-jenkins.txt

az vm open-port --resource-group $rg --name $vm --port  8080
