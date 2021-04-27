# data-plant-java

## Install 

Create ImageStreamTag for the `ubi-quarkus-native-s2i` image in the `openshift` namespace:
```sh
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-analysis && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-clean && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-collect && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-extract && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-evaluate && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-metadata && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-prepare && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-split && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-storage && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-transform && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-query && \
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 --namespace data-validate

```

Deploy the BuildConfig objects:
```sh 
kustomize build https://github.com/cgfulton/mlops-plant.git/data-plant-java?ref=main | oc apply -f-
```

Build the java applications:
```sh 
oc start-build data-analysis --namespace data-analysis --follow --wait
oc start-build data-clean --namespace data-clean --follow --wait
oc start-build data-collect --namespace data-collect --follow --wait
oc start-build data-extract --namespace data-extract --follow --wait    
oc start-build data-evaluate --namespace data-evaluate --follow --wait   
oc start-build data-metadata --namespace data-metadata --follow --wait
oc start-build data-prepare --namespace data-prepare --follow --wait    
oc start-build data-split --namespace data-split --follow --wait 
oc start-build data-storage --namespace data-storage --follow --wait      
oc start-build data-transform --namespace data-transform --follow --wait   
oc start-build data-query --namespace data-query --follow --wait      
oc start-build data-validate --namespace data-validate --follow --wait
```
