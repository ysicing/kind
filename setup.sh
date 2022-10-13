#!/bin/bash

# CN: ccr.ccs.tencentyun.com/k7scn/kindnode:v1.23.6
docker pull kindest/node:v1.23.12

kind create cluster --image kindest/node:v1.23.12 --kubeconfig ./kind.kubeconfig --config ./config.yaml

kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig
