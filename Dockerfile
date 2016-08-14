FROM ubuntu
RUN echo nameserver 8.8.8.8 > /etc/resolv.conf

RUN /bin/bash -c 'apt-get update && \
	apt-get install -y curl && \
	apt-get install -y jq && \
	apt-get install -y git && \
	apt-get install -y iputils-ping && \
	apt-get install -y ngrep && \
	apt-get install -y nmap && \
	apt-get install -y cl-base64 && \
	apt-get install -y coreutils && \
	apt-get install -y openssl && \
	apt-get install -y manpages && \
	apt-get install -y man-db && \
	apt-get install -y tth-common && \
	apt-get install -y gettext-base && \
	apt-get install -y graphviz && \
	apt-get install -y python3 && \
	apt-get install -y gridsite-clients && \
	apt-get install -y python-pip && \
	apt-get install -y python3-pip && \
	apt-get install -y httpie && \
	pip install --upgrade pip && \
	pip install virtualenv && \
	pip install httpie-oauth && \
	pip install httpie-hmac-auth && \
	pip install pdoc && \
	pip install -U pytest && \
	pip install requests && \
	pip install ddt && \
	pip install ddt && \
	pip install httpie-api-auth'

# turns off the annoying message about unsigned SSL certs from httpie
ENV PYTHONWARNINGS "ignore:Unverified HTTPS request"
ENV PYTHONPATH ".:$HOME:$HOME/BPRC/:$HOME/BPRC/bprc:$HOME/BPRC/tests/"

ENV TERM "xterm"

VOLUME ["/root"]

WORKDIR /root
CMD while true; do sleep 1000; done
