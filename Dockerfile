FROM quay.io/buildah/stable:latest
COPY extract.sh .
RUN yum -y install wget
# Matching appsody binary does not exist in upstream.
# Provide the proper version once it is available.
ARG CLI_VERSION
RUN wget https://github.com/appsody/appsody/releases/download/$CLI_VERSION/appsody-$CLI_VERSION-1.x86_64.rpm
RUN yum localinstall -y ./appsody-$CLI_VERSION-1.x86_64.rpm
RUN chmod +x extract.sh
