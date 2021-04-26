# data-plant-java

## Install 

Create ImageStreamTag for the `ubi-quarkus-native-s2i` image in the `openshift` namespace:
```sh
oc tag quay.io/quarkus/ubi-quarkus-native-s2i:20.3.1-java11 ubi-quarkus-native-s2i:20.3.1-java11 -n openshift
```

Deploy the BuildConfig objects:
```sh 
kustomize build . | oc apply -f-
```

Build the java applications:
```sh 
oc start-build data-analysis
```




## References

* [Hidden Technical Debt in Machine Learning Systems](https://papers.nips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)