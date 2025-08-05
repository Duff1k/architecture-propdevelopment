#!/bin/bash

kubectl create clusterrolebinding devops-admin-binding \
  --clusterrole=cluster-admin \
  --serviceaccount=kube-system:devops-admin

kubectl create clusterrolebinding developer-binding \
  --clusterrole=cluster-editor \
  --serviceaccount=default:developer

kubectl create clusterrolebinding support-binding \
  --clusterrole=cluster-viewer \
  --serviceaccount=default:support

kubectl create clusterrolebinding security-team-binding \
  --clusterrole=cluster-privileged \
  --serviceaccount=kube-system:security-team
