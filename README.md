# mlops-plant

## [operator-plant](./operator-plant)
Opinionated approach to installing and running of OpenShift operators.

### Operators

[Elasticsearch](./operator-plant/overlays/elasticsearch)

Elasticsearch for OCP provides a means for configuring and managing an Elasticsearch cluster for use in tracing and cluster logging as well as a Kibana instance to connect to it. This operator only supports OCP Cluster Logging and Jaeger. It is tightly coupled to each and is not currently capable of being used as a general purpose manager of Elasticsearch clusters running on OCP.

[Jaeger](./operator-plant/overlays/jaeger)

Jaeger, inspired by Dapper and OpenZipkin, is a distributed tracing system released as open source by Uber Technologies. It is used for monitoring and troubleshooting microservices-based distributed systems.

[Kiali](./operator-plant/overlays/kiali)

[Maistra](service-mesh/overlays/operator-maistra)

#### Install
```sh 
kustomize build operator-plant | oc apply -f-
```

## [control-plant](./control-plant)
Maistra control plane.

### Install
```sh 
kustomize build control-plant | oc apply -f-
```

## data-plant
[data-analysis](./data-plant/overlays/data-analysis)

`data-analysis` inspects data for useful information and conclusions.

[data-clean](./data-plant/overlays/data-clean)

`data-clean` fixes or removes incorrect, corrupted, duplicate, or incomplete data.

[data-evaluate](./data-plant/overlays/data-evaluate)

`data-evaluate` determines whether data is usable.

[data-extract](./data-plant/overlays/data-extract)

`data-extract` retrieves subsets of data for further processing.

[data-ingress](./data-plant/overlays/data-ingress)

`data-ingress` ingests targeted data from one or more sources.

[data-metadata](./data-plant/overlays/data-metadata)

`data-metadata` summarizes and tagging information about data.

[data-prepare](./data-plant/overlays/data-prepare)

`data-prepare` manipulates data into a usable form.

[data-query](./data-plant/overlays/data-query)

`data-query` answers a question.

[data-split](./data-plant/overlays/data-split)

`data-split` partitioning of data.

[data-storage](./data-plant/overlays/data-storage)

`data-storage` records data for future retrieval.

[data-transform](./data-plant/overlays/data-transform)

`data-transform` converts one data format to another.

[data-validate](./data-plant/overlays/data-validate)

`data-validate` checks the accuracy and quality of data.

### Install
```sh 
kustomize build data-plant | oc apply -f-
```

## [java-plant](java-plant)
Java based service implementations.

### Install

```sh 
mvn clean package -f data-plant/java-impl/pom.xml
```

## References

* [Hidden Technical Debt in Machine Learning Systems](https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)