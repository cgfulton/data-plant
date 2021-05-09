# mlops-plane

## Install Projects

### [common-plane](./common-plane)
Install the common components.
```console 
kustomize build common-plane | oc apply -f-
```

### [operator-plane](./data-plane)
Installs OpenShift operators.
```console 
kustomize build operator-plane | oc apply -f-
```

### [control-plane](./control-plane)
Install the service mesh control plane.
```console 
kustomize build control-plane | oc apply -f-
```

### [image-plane](./image-plane)
```console 
kustomize build image-plane | oc apply -f-
```

### [data-plane](./data-plane) 
Install the service mesh data plane.
```console 
kustomize build data-plane | oc apply -f-
```

## References

* [Hidden Technical Debt in Machine Learning Systems](https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)