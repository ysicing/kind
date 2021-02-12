docker pull registry.cn-beijing.aliyuncs.com/k7scn/node:v1.20.2

kind create cluster --image registry.cn-beijing.aliyuncs.com/k7scn/node:v1.20.2 --kubeconfig ./kind.kubeconfig --config ./config.yaml

kubectl apply -f ./kind-ingress.yaml --kubeconfig ./kind.kubeconfig
