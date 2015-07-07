# Usage:
# Build: sudo docker rmi jfed-probe; sudo docker build --tag=jfed-probe .
# Use  : sudo docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jfed-probe

FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
	sed 's/archive.ubuntu.com/de.mirror.archive.ubuntu.com/' -i -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer 
RUN apt-get install -y libswt-gtk-3-java x11-utils libxslt1.1 && \
#    apt-get install -y libxslt xfonts-75dpi && \
#    apt-get install -y libxext-dev libxrender-dev libxtst-dev libswt-gtk-3-java && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir -p /home/developer && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
RUN cd /home/developer && wget -q http://jfed.iminds.be/releases/master/424/jar/jFed-probe-GUI.jar
CMD java -Dprism.useFontConfig=false -jar jFed-probe-GUI.jar
