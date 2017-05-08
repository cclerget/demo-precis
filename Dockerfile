FROM ubuntu:latest
	
RUN apt-get update
RUN apt-get install -y \
            python-numpy \
            cython \
            python-matplotlib \
            git
	
COPY ./runsim.sh /
RUN chmod +x /runsim.sh
ENTRYPOINT ['/runsim.sh']
