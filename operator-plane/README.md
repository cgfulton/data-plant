# operator-plant

[Elasticsearch](overlays/elasticsearch)

Elasticsearch for OCP provides a means for configuring and managing an Elasticsearch cluster for use in tracing and cluster logging as well as a Kibana instance to connect to it. This operator only supports OCP Cluster Logging and Jaeger. It is tightly coupled to each and is not currently capable of being used as a general purpose manager of Elasticsearch clusters running on OCP.

[Jaeger](overlays/jaeger)

Jaeger, inspired by Dapper and OpenZipkin, is a distributed tracing system released as open source by Uber Technologies. It is used for monitoring and troubleshooting microservices-based distributed systems.

[Kiali](overlays/kiali)

Kiali is a management console for Istio-based service mesh. It provides dashboards, observability and lets you to operate your mesh with robust configuration and validation capabilities.

[Maistra](overlays/operator-maistra)

Maistra is a platform that provides behavioral insight and operational control over a service mesh, providing a uniform way to connect, secure, and monitor microservice applications.


## Install

```sh 
kustomize build https://github.com/cgfulton/mlops-plant.git/operator-plant?ref=main | oc apply -f-
```
