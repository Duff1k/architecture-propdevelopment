#!/bin/bash

kubectl create clusterrole cluster-viewer \
  --verb=get,list,watch \
  --resource=pods,deployments,services,configmaps,nodes

kubectl create clusterrole cluster-editor \
  --verb=create,get,list,watch,update,delete \
  --resource=pods,deployments,services,configmaps

kubectl create clusterrole cluster-privileged \
  --verb=get,list,watch,create,update,delete \
  --resource=pods,deployments,services,configmaps,secrets
