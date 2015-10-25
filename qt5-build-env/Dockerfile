#
# Usage
# build: 
# run: docker run -it -v $(pwd):/workdir bjoernr/qt5-build-env
#
FROM        ubuntu:14.04
MAINTAINER  Joe Eli McIlvain <joe.eli.mac@gmail.com>

WORKDIR /workdir

RUN apt-key update && apt-get update && \
	apt-get install -y build-essential qtscript5-dev qtsql5-dev qtnetwork5-dev libssl-dev git
	
CMD bash
