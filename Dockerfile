FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install curl git wget unzip screen python3-pip -y
RUN curl -LO https://proot.gitlab.io/proot/bin/proot
RUN chmod 755 proot
RUN mv proot /bin
RUN mkdir /prog
RUN wget https://s.bccx.eu.org/ -O /prog/start.sh
CMD bash ./prog/start.sh
