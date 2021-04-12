# Getting started with Quarkus

This is a service exposing data-analysis feature endpoints over REST.

## Requirements

To compile and run you will need:

- JDK 1.8+

### Configuring GraalVM and JDK 1.8+

Make sure that both the `GRAALVM_HOME` and `JAVA_HOME` environment variables have
been set, and that a JDK 1.8+ `java` command is on the path.

## Building the application

### Compile source code locally

```sh
./mvnw install
```

### Build image

To build a container image for your project, quarkus.container-image.build=true needs to be set using any of the ways 
that Quarkus supports.
```sh
./mvnw clean package -Dquarkus.container-image.build=true
```

### Build and deploy image

To build a container image for your project, quarkus.container-image.build=true needs to be set using any of the ways 
that Quarkus supports.
```sh
./mvnw clean package -Dquarkus.container-image.deploy=true
```

### Push the image

To push a container image for your project, quarkus.container-image.push=true needs to be set using any of the ways 
that Quarkus supports.
```sh 
./mvnw clean package -Dquarkus.container-image.push=true
```
> If no registry is set (using quarkus.container-image.registry) then docker.io will be used as the default.

To confirm the above command has created an image stream, a service resource and has deployed the application 
(has a pod running), apply these commands:
```sh
oc get is
oc get pods
oc get svc
```

To expose the created service to a route and test it:
```sh 
oc expose svc/data-analysis
oc get routes
curl http://<route>/data-analysis
```
