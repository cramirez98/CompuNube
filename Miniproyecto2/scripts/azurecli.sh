az account set --subscription 6492875f-83b4-4c4d-9d55-a62393c307b7
az aks get-credentials --resource-group KubernetesClusterRG --name Kubernetes_Cluster
kubectl config get-contexts
kubectl config view
kubectl config current-context
ubectl get nodes

kubectl config use-context CONTEXT_NAME
