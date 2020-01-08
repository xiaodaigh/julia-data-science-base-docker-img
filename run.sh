#/build.sh
#docker run --rm --net=host -it zj/julia-try
#docker run --rm -e DISPLAY=192.168.1.106:0.0 -it zj/julia-try
#docker run --rm	-e DISPLAY=$DISPLAY -e JUPYTER_ENABLE_LAB=yes -it -p 8888:8888 --privileged --user 5000 --group-add users -v "$PWD":/home/jovyan/work -v /mnt/c/git:/home/jovyan/git  -v /mnt/c/docker:/home/jovyan/docker zj/julia-try

docker run --rm -p 8888:8888 zj/julia-try
