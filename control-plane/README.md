# control-plant

Service Mesh control plane.

## Install

```sh 
kustomize build https://github.com/cgfulton/plant.git/control-plant?ref=main | oc apply -f-
```

## Status
```sh
oc get smcp -n istio-system
```
