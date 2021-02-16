# workshop_rapidcheck

Workshop about Property Based Testing in C++.

## Preparation

Make sure that you set the proxy variables to be able to pull from the docker registry (ask the instructor for help)

Build docker image.

  ./build.sh

Open docker container.

  ./run.sh

## Planned Session

* Intro into Property Based Testing
* Look at example 01 - understand how the idea is to note invariant properties being confirmed
* Exercise 01 - write a function that checks for the min of two doubles and identity the post condition which is invariant.
* Look at example 02 - understand generators
* Exercise 02 - write a class to represent a Sensor measurement device, give it a name, 4 supported IMAGE resolution modes with
different read frequencies for each. Write an invariant property that confirms no invalid frequency is used for a given resolution
and use RC_TAG to notice the distribution of combination checks.
* Look at example 03 - understand state
* Exercise 03 - extend the Sensor class with an internal Opened / Closed state, and has the following commands: open/close/readImage
write your own property based test that is aware of the Sensor state and validates the sequence of commands sent to the sensor and
how it is expected to react.
* Wrap up - future additional ideas
