#!/bin/sh

echo "docker jfed wrapper..."

#_CACHE_DIR=$(pwd)"/m2_cache"

runcmd() {
	echo "cmd: $@"
	$@
}

# sudo docker rmi jfed-probe; sudo docker build --tag=jfed-probe .
# sudo docker run -ti --rm -e DISPLAY=172.17.42.1:0 -v /tmp/.X11-unix:/tmp/.X11-unix jfed-probe bash --login

if [ "$1" = "-r" ]; then
	runcmd "docker rmi jfed-probe"
	#runcmd "docker build --tag=jfed-probe --rm --force-rm $(pwd)" || exit
	runcmd "docker build --tag=jfed-probe --rm $(pwd)" || exit
fi
runcmd docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix jfed-probe
