# operator-plant

Opinionated approach to installing and running of OpenShift operators required by mlops-plant.

## Operators

### [Operator Elasticsearch](elasticsearch) 
Elasticsearch for OCP provides a means for configuring and managing an Elasticsearch cluster for use in tracing and cluster logging as well as a Kibana instance to connect to it. This operator only supports OCP Cluster Logging and Jaeger. It is tightly coupled to each and is not currently capable of being used as a general purpose manager of Elasticsearch clusters running on OCP.

### [Operator Jaeger](jaeger)
Jaeger, inspired by Dapper and OpenZipkin, is a distributed tracing system released as open source by Uber Technologies. It is used for monitoring and troubleshooting microservices-based distributed systems.

### [Operator Kiali](kiali)

  
### [Operator Maistra](maistra)
