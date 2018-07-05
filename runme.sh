#!/bin/bash


docker build -t dodi78/hello-node:v1 .

echo "you have to be logged into docker-hub"
echo "docker push dodi78/hello-node:v1"

helm install stable/nginx-ingress --name my-nginx


kubectl create -f ./node-test.yaml
kubectl create -f ./node-nginx-ingress.yaml


kubectl describe  ing hello-node-ingress
