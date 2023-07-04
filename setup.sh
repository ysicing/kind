#!/bin/bash

command_exists() {
	command -v "$@" > /dev/null 2>&1
}

if command_exists kind; then
  echo "kind exists"
else
  wget https://ghproxy.com/https://github.com/kubernetes-sigs/kind/releases/download/v0.20.0/kind-linux-amd64
  chmod +x kind-linux-amd64
  mv kind-linux-amd64 /usr/local/bin/kind
fi

if command_exists kubectl; then
  echo "kubectl exists"
else
  wget https://pkg-1308438674.cos.ap-shanghai.myqcloud.com/qucheng/cli/stable/tools/kubectl
  chmod +x kubectl
  mv kubectl /usr/local/bin/kubectl
fi

docker pull ccr.ccs.tencentyun.com/k7scn/node:v1.27.3

kind create cluster --image ccr.ccs.tencentyun.com/k7scn/node:v1.27.3 --kubeconfig ./kind.kubeconfig # --config ./config.yaml

# kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig

kubectl cluster-info --context kind-kind --kubeconfig ./kind.kubeconfig

kubectl get nodes --kubeconfig ./kind.kubeconfig
