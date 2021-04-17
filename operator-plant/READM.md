# Operator Plant

## Operators

### [Operator Elasticsearch](./operator-elasticsearch)
  
The Elasticsearch Operator for OCP provides a means for configuring and managing an Elasticsearch cluster for use in tracing and cluster logging as well as a Kibana instance to connect to it. This operator only supports OCP Cluster Logging and Jaeger. It is tightly coupled to each and is not currently capable of being used as a general purpose manager of Elasticsearch clusters running on OCP.

__Install__
```sh
helm install opertor-elasticsearch opertor-elasticsearch/
```

__Delete__
```sh
helm delete opertor-elasticsearch
```

### [Operator Jaeger](./operator-jaeger)

__Install__
```sh
helm install opertor-jaeger opertor-jaeger/
```

__Delete__
```sh
helm delete opertor-elasticsearch
```

### [Operator Kiali](./operator-kiali)

__Install__
```sh
helm install opertor-kiali opertor-kiali/
```

__Delete__
```sh
helm delete opertor-kiali
```

### [Operator Maistra](./operator-maistra)

__Install__
```sh
helm install opertor-kiali opertor-maistra/
```

__Delete__
```sh
helm delete opertor-maistra
```