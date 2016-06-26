FROM ubuntu
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
	apt-get install -y gridsite-clients && \
	apt-get install -y python-pip && \
	apt-get install -y httpie && \
	pip install --upgrade pip && \
	pip install httpie-oauth && \
	pip install httpie-hmac-auth && \
	pip install httpie-api-auth'

# turns off the annoying message about unsigned SSL certs from httpie
ENV PYTHONWARNINGS "ignore:Unverified HTTPS request"

VOLUME ["/root"]

WORKDIR /root
#CMD ["tail -f /etc/hosts"]