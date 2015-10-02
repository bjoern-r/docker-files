from ubuntu:14.04

#run apt-get update &&\
#	apt-get install -y build-essential lib32z1-dev lib32z1 libzip-dev libncurses5-dev autoconf automake gettext git libtool pkg-config python unzip bison flex wget libreadline-dev gettext
#run apt-get install -y subversion gawk ruby1.8 libusb-dev realpath fastjar git imagemagick patchutils mktemp

run apt-get update && \
	apt-get -y install graphicsmagick subversion gcc g++ binutils autoconf automake automake1.9 libtool make bzip2 \
	 libncurses5-dev libreadline-dev zlib1g-dev flex bison patch texinfo tofrodos gettext pkg-config ecj fastjar realpath \
	 perl libstring-crc32-perl ruby gawk python libusb-dev unzip intltool libacl1-dev libcap-dev libc6-dev-i386 \
	 lib32ncurses5-dev gcc-multilib lib32stdc++6 xz-utils git wget && \
	apt-get clean

# unknown: ruby1.8
# rebuild: docker tag bjoernr/freez-build:latest bjoernr/freez-build:old; docker rmi bjoernr/freez-build:latest; docker build --rm --tag=bjoernr/freez-build . && docker rmi bjoernr/freez-build:old
# usage: docker run -it --rm -u $(id -u) -v $(pwd):$(pwd) -w $(pwd) bjoernr/freez-build bash -c "umask 0022 && make menuconfig && make "
#