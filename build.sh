#!/bin/bash

# pull "rapidcheck" submodule and its submodules (catch, googletest)
git submodule update --init --recursive 01/ext/rapidcheck/
docker build -t wsrc:latest .
