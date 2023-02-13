#!/bin/bash

# CN: ccr.ccs.tencentyun.com/k7scn/kindnode:v1.23.6
docker pull ccr.ccs.tencentyun.com/k7scn/kindnode:v1.25.3

kind create cluster --image ccr.ccs.tencentyun.com/k7scn/kindnode:v1.25.3 --kubeconfig ./kind.kubeconfig --config ./config.yaml

kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig
