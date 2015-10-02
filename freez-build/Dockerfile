from ubuntu:14.04

run apt-get update && apt-get install -y build-essentials lib32z1-dev lib32z1 libzip-dev libncurses5-dev autoconf automake gawk gettext git libtool pkg-config python unzip bison flex wget && apt-get clean

# usage: docker run -it -v $(pwd):$(pwd) -w $(pwd) ubuntu:14.04 bash -c "make menuconfig && make "
