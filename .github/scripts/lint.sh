#!/bin/bash

ct lint \
    --chart-dirs ${CHARTS_DIR} \
    --all \
    --validate-maintainers=false