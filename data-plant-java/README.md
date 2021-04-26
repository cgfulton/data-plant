# data-plant-java

## Install 

Create ImageStreamTag for the `ubi-quarkus-native-s2i` image in the `openshift` namespace:
```sh
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 -n openshift
```

Deploy the BuildConfig objects:
```sh 
kustomize build https://github.com/cgfulton/mlops-plant.git/data-plant-java?ref=main | oc apply -f-
```

Build the java applications:
```sh 
oc start-build data-analysis
```
