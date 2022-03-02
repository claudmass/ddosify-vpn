
    FROM ubuntu

    USER root

    RUN apt update -y
    RUN apt install -y openvpn | echo "y"
    RUN apt install  -y curl| echo "y"

    WORKDIR /home
    
    COPY autovpn3.sh ./
    CMD chmod +x ./autovpn3.sh && ./autovpn3.sh | echo "Y"


    RUN wget https://github.com/ddosify/ddosify/releases/latest/download/ddosify_amd64.deb
    RUN dpkg -i ddosify_amd64.deb