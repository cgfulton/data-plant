# data-plant

## Assumptions

export OVERLAYS_URL=https://github.com/cgfulton/mlops-plant.git/data-plant/overlays

Provides a service mesh overlay for data functionality.

[data-analysis](./data-plant/overlays/data-analysis)

`data-analysis` inspects data for useful information and conclusions.

Install `data-analysis`:
```sh 
kustomize build $OVERLAYS_URL/data-analysis?ref=main | oc apply -f-
```

[data-clean](./data-plant/overlays/data-clean)

`data-clean` fixes or removes incorrect, corrupted, duplicate, or incomplete data.

Install `data-clean`:
```sh 
kustomize build $OVERLAYS_URL/data-clean?ref=main | oc apply -f-
```

[data-evaluate](./data-plant/overlays/data-evaluate)

`data-evaluate` determines whether data is usable.

Install `data-evaluate`:
```sh 
kustomize build $OVERLAYS_URL/data-evaluate?ref=main | oc apply -f-
```

[data-extract](./data-plant/overlays/data-extract)

`data-extract` retrieves subsets of data for further processing.

Install `data-extract`:
```sh 
kustomize build $OVERLAYS_URL/data-extract?ref=main | oc apply -f-
```

[data-metadata](./data-plant/overlays/data-metadata)

`data-metadata` summarizes and tagging information about data.

Install `data-metadata`:
```sh 
kustomize build $OVERLAYS_URL/data-metadata?ref=main | oc apply -f-
```

[data-prepare](./data-plant/overlays/data-prepare)

`data-prepare` manipulates data into a usable form.

Install `data-prepare`:
```sh 
kustomize build $OVERLAYS_URL/data-prepare?ref=main | oc apply -f-
```

[data-query](./data-plant/overlays/data-query)

`data-query` answers a question.

Install `data-query`:
```sh 
kustomize build $OVERLAYS_URL/data-query?ref=main | oc apply -f-
```

[data-split](./data-plant/overlays/data-split)

`data-split` partitioning of data.

Install `data-split`:
```sh 
kustomize build $OVERLAYS_URL/data-split?ref=main | oc apply -f-
```

[data-storage](./data-plant/overlays/data-storage)

`data-storage` records data for future retrieval.

Install `data-storage`:
```sh 
kustomize build $OVERLAYS_URL/data-storage?ref=main | oc apply -f-
```

[data-transform](./data-plant/overlays/data-transform)

`data-transform` converts one data format to another.

Install `data-transform`:
```sh 
kustomize build $OVERLAYS_URL/data-transform?ref=main | oc apply -f-
```

[data-validate](./data-plant/overlays/data-validate)

`data-validate` checks the accuracy and quality of data.

Install `data-validate`:
```sh 
kustomize build $OVERLAYS_URL/data-evaluate?ref=main | oc apply -f-
```