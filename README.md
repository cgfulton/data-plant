# MlOps Helm Charts
Helm Charts for deploying various components of the MlOps project.

## Charts

### services-resources
A Helm chart for Kubernetes to deploy services.


### operators-resources
A Helm chart for Kubernetes to install the MlOps operators.


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