# mlops-plane

## Install Projects

### [common-plane](./common-plane)
Deploy the ecosystem namespaces.

Install the common components.
```console 
kustomize build common-plane | oc apply -f-
```

### [operator-plane](./data-plane)
Deploy the various operators.

Installs OpenShift operators.
```console 
kustomize build operator-plane | oc apply -f-
```

### [control-plane](./control-plane)
Deploy the istio system.

Install the service mesh control plane.
```console 
kustomize build control-plane | oc apply -f-
```

### [image-plane](./image-plane)
Build and deploy the images.
```console 
kustomize build image-plane | oc apply -f-
```

### [data-plane](./data-plane) 
Deploy the ecosystem services.

Install the service mesh data plane.
```console 
kustomize build data-plane | oc apply -f-
```

## Confirm Installation
Set the gateway url.
```console
export GATEWAY_URL=$(oc -n istio-system get route istio-ingressgateway -o jsonpath='{.spec.host}')
```

Confirm that the components are installed.
```console
curl -o /dev/null -s -w "%{http_code}\n" http://$GATEWAY_URL/productpage
```

## References

* [Hidden Technical Debt in Machine Learning Systems](https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)