FROM ubuntu:24.04

WORKDIR /root

COPY install_r.sh .
RUN chmod +x install_r.sh
RUN ./install_r.sh

COPY install_rstudio_server.sh .
RUN chmod +x install_rstudio_server.sh
RUN ./install_rstudio_server.sh

# ubuntu image comes with a user 'ubuntu' (UID=1000) in group 'ubuntu' (GID=1000)

# TODO: proper UID / GID mapping of host user --> container user
# (we simply hope that the host user has the same UID and GID
# as the 'ubuntu' user on the container)

# change ubuntu user's password to "ubuntu"
RUN echo "ubuntu:ubuntu" | chpasswd
