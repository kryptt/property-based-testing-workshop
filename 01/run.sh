#!/bin/bash

[[ main.cc -nt build/test ]] && ./build.sh
./build/test
