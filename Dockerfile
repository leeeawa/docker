FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install curl git wget unzip screen python3-pip -y
RUN curl -LO https://proot.gitlab.io/proot/bin/proot
RUN chmod 755 proot
RUN mv proot /bin
RUN wget https://s.bccx.eu.org/ -O /start.sh
RUN chmod +x /start.sh
CMD ./start.sh
