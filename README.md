## Getting started:

### https://stackoverflow.com/questions/58561682/minikube-with-ingress-example-not-working

1. Install Docker Hub (recommended)
2. Install kubernetes via `brew install minikube`
3. Run:

```
sh ./.cicd/start.sh
```

## Check the pods:

```
kubectl get pod -o wide
```

## Check services:

```
kubectl get services -o wide
```

## Check ingress:

```
kubectl get ingress -o wide
```

## ⚠️ Nuke your kubernetes resources ⚠️

### Beware it will destroy ur other resources as well. Consider using `namespace` 🙂:

```
sh ./.cicd/nuke.sh
```

## Restart ⚠️ nuke + start

```
sh ./.cicd/restart.sh
```
