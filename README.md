# go-multi-module-k8s

## Getting started:

1. Install Docker Hub (recommended)
2. Install kubernetes via `brew install kubectl`
3. Run: `sh deploy.sh`

## Check the pods:

```
kubectl get pod -o wide
```

## Check services:

```
kubectl get services
```

## Check ingress:

```
kubectl get ingress
```

## ⚠️ Nuke your kubernetes resources ⚠️

### Beware it will destroy ur other resources as well. Consider using `namespace` 🙂:

```
kubectl delete all --all
```
