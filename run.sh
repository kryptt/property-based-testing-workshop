#!/bin/bash

docker run -it --rm --entrypoint /bin/bash -v $PWD/01:/workshop_rapidcheck/01 -v $PWD/02:/workshop_rapidcheck/02 -w /workshop_rapidcheck wsrc:latest
