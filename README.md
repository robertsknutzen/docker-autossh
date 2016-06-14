# docker-autossh
This builds a docker file that has autossh installed and configures it from a file you have in the build directory

running the following in the directory with the Dockerfile will build it

docker build --tag=autossh . 

NOTE: Obviously generate your own damn keys and fill out the autossh.config with stuff that works for a machine you have ssh access to.
