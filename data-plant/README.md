# data-plant

Provides a service mesh overlay for data functionality.

## Components

### [data-analysis](./data-plant/overlays/data-analysis)

`data-analysis` inspects data for useful information and conclusions.

### [data-clean](./data-plant/overlays/data-clean)

`data-clean` fixes or removes incorrect, corrupted, duplicate, or incomplete data.

### [data-evaluate](./data-plant/overlays/data-evaluate)

`data-evaluate` determines whether data is usable.

### [data-extract](./data-plant/overlays/data-extract)

`data-extract` retrieves subsets of data for further processing.

### [data-metadata](./data-plant/overlays/data-metadata)

`data-metadata` summarizes and tagging information about data.

### [data-prepare](./data-plant/overlays/data-prepare)

`data-prepare` manipulates data into a usable form.

### [data-query](./data-plant/overlays/data-query)

`data-query` answers a question.

### [data-split](./data-plant/overlays/data-split)

`data-split` partitioning of data.

### [data-storage](./data-plant/overlays/data-storage)

`data-storage` records data for future retrieval.

### [data-transform](./data-plant/overlays/data-transform)

`data-transform` converts one data format to another.

### [data-validate](./data-plant/overlays/data-validate)

`data-validate` checks the accuracy and quality of data.

## Install

```sh 
kustomize build data-plant | oc apply -f-
```