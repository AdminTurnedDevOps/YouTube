`kubescape scan --account your_account_id`

`kubescape submit rbac --account your_account_id`

```
helm repo add armo https://armosec.github.io/armo-helm/
helm repo update
helm upgrade --install armo armo/armo-cluster-components -n armo-system --create-namespace --set accountGuid=7bcb8621-517d-4416-9a72-234cf9b5d90c --set clusterName=`kubectl config current-context`
```