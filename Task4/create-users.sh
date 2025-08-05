#!/bin/bash

kubectl create serviceaccount devops-admin -n kube-system
kubectl create serviceaccount developer -n default
kubectl create serviceaccount support -n default
kubectl create serviceaccount security-team -n kube-system
