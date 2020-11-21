docker pull registry.cn-beijing.aliyuncs.com/k7scn/node:v1.19.1
kind create cluster --image registry.cn-beijing.aliyuncs.com/k7scn/node:v1.19.1 --kubeconfig ./kind.kubeconfig --config ./config.yaml

kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig
