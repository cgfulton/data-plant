# Operator Plant

## Operators

### [Operator Elasticsearch](./operator-elasticsearch)
  
The Elasticsearch Operator for OCP provides a means for configuring and managing an Elasticsearch cluster for use in tracing and cluster logging as well as a Kibana instance to connect to it. This operator only supports OCP Cluster Logging and Jaeger. It is tightly coupled to each and is not currently capable of being used as a general purpose manager of Elasticsearch clusters running on OCP.

__Install__
```sh
helm install operator-elasticsearch ./operator-elasticsearch/
```

__Delete__
```sh
helm delete operator-elasticsearch
```

### [Operator Jaeger](./operator-jaeger)

Jaeger, inspired by Dapper and OpenZipkin, is a distributed tracing system released as open source by Uber Technologies. It is used for monitoring and troubleshooting microservices-based distributed systems.

__Install__
```sh
helm install operator-jaeger ./operator-jaeger/
```

__Delete__
```sh
helm delete operator-elasticsearch
```

### [Operator Kiali](./operator-kiali)

__Install__
```sh
helm install operator-kiali ./operator-kiali
```

__Delete__
```sh
helm delete operator-kiali
```

### [Operator Maistra](./operator-maistra)

__Install__
```sh
helm install operator-kiali ./operator-maistra
```

__Delete__
```sh
helm delete operator-maistra
```