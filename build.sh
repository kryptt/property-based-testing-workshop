#!/bin/bash

# pull "rapidcheck" submodule and its submodules (catch, googletest)
git submodule update --init --recursive 01/ext/rapidcheck/
docker build -t dl-innersource-docker-local.artifactory-ehv.ta.philips.com/swcoe/pbt-workshop:0.1.0  .
