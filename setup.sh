docker pull ccr.ccs.tencentyun.com/k7scn/node:v1.23.4

kind create cluster --image ccr.ccs.tencentyun.com/k7scn/node:v1.23.4 --kubeconfig ./kind.kubeconfig --config ./config.yaml

kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig
