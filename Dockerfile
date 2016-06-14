FROM ubuntu
RUN apt-get update
RUN apt-get -y install build-essential vim wget openssh-client openssh-server; \
  mkdir -p /autossh/keys;\
  mkdir   /autossh/src

WORKDIR /autossh/src
RUN  wget http://www.harding.motd.ca/autossh/autossh-1.4e.tgz; \ 
  tar xvzf  autossh-1.4e.tgz

WORKDIR /autossh/src/autossh-1.4e
RUN  ./configure;\
  make ; make install; 

COPY autossh.config /autossh/autossh.config
COPY autossh.host   /autossh/autossh.host  
COPY autossh.firstconnect /autossh/autossh.firstconnect
WORKDIR /autossh
RUN chmod +x /autossh/autossh.host;\
    chmod +x /autossh/autossh.firstconnect
COPY autosshkey /autossh/keys/autosshkey
COPY autosshkey.pub /autossh/keys/autosshkey.pub
RUN /autossh/autossh.firstconnect

ENTRYPOINT service ssh start && /autossh/autossh.host && bash
