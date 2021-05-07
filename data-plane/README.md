# data-plant

Provides a service mesh overlay for data functionality.

## [data-analysis](overlays/data-analysis)

`data-analysis` inspects data for useful information and conclusions.

## [data-clean](overlays/data-clean)

`data-clean` fixes or removes incorrect, corrupted, duplicate, or incomplete data.

## [data-evaluate](overlays/data-evaluate)

`data-evaluate` determines whether data is usable.

## [data-extract](overlays/data-extract)

`data-extract` retrieves subsets of data for further processing.

## [data-metadata](overlays/data-metadata)

`data-metadata` summarizes and tagging information about data.

## [data-prepare](overlays/data-prepare)

`data-prepare` manipulates data into a usable form.

## [data-query](overlays/data-query)

`data-query` answers a question.

## [data-split](overlays/data-split)

`data-split` partitioning of data.

## [data-storage](overlays/data-storage)

`data-storage` records data for future retrieval.

## [data-transform](overlays/data-transform)

`data-transform` converts one data format to another.

## [data-validate](overlays/data-validate)

`data-validate` checks the accuracy and quality of data.

## Install

```sh 
kustomize build https://github.com/cgfulton/mlops-plant.git/data-plant?ref=main | oc apply -f-
```