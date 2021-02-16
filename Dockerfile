FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
  g++ \
  make \
  cmake \
  google-mock \
  libgtest-dev \
  git

# build & install gtest (cmake -DBUILD_SHARED_LIBS=ON . for shlibs)
RUN cd /usr/src/gtest ; cmake . ; make
RUN mv /usr/src/gtest/*.a /usr/lib/

# build & install gmock (cmake -DBUILD_SHARED_LIBS=ON . for shlibs)
RUN cd /usr/src/gmock ; cmake . ; make
RUN mv /usr/src/gmock/*.a /usr/lib/

# clone rapidcheck
RUN git clone -q https://github.com/emil-e/rapidcheck.git /rapidcheck

# build rapidcheck (as libary into /usr/lib/librapidcheck.a) and install headers
RUN cd /rapidcheck \
  && cmake -DRC_ENABLE_GTEST=True -DRC_INSTALL_ALL_EXTRAS=True . \
  && make
RUN mv /rapidcheck/librapidcheck.a /usr/lib/
RUN mv /rapidcheck/include /usr/include/rapidcheck
RUN mv /rapidcheck/extras/gtest/include/rapidcheck/gtest.h /usr/include/rapidcheck
