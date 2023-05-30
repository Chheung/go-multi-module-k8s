## Getting started:

- Install Docker Hub (recommended)
- Install kubernetes via `brew install kubectl`
- Install minikube via `brew install minikube`
- Run:

```
sh ./.bash/start.sh
```

## Dashboard

```
minikube dashboard
```

## Check the pods

```
kubectl get pod -o wide
```

## Check services

```
kubectl get services -o wide
```

## Check ingress

```
kubectl get ingress -o wide
```

## ⚠️ Nuke your kubernetes resources ⚠️

```
sh ./.bash/nuke.sh
```

## Restart ⚠️ nuke + start

```
sh ./.bash/restart.sh
```

## Refresh minikube

```
minikube delete && minikube start
```
