FROM ubuntu:latest
	
RUN apt-get update
RUN apt-get install -y \
            python-numpy \
            cython \
            python-matplotlib \
            git
	
ONBUILD COPY ./runsim.sh /
ONBUILD RUN chmod +x /runsim.sh
ENTRYPOINT exec /runsim.sh
