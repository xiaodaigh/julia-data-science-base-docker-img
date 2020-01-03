./build.sh
#docker run --rm --net=host -it zj/julia-try
#docker run --rm -e DISPLAY=192.168.1.106:0.0 -it zj/julia-try

docker run --rm \
	-e DISPLAY=192.168.1.106:0.0 \
	-e JUPYTER_ENABLE_LAB=yes \
	-v "$PWD":/home/jovyan/work\
	-v /mnt/c/git:/home/jovyan/git
	-v /mnt/c/docker:/home/jovyan/docker
	-it -p 8888:8888 zj/julia-try
