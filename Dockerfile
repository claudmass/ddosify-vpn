
    FROM ubuntu

    USER root

    RUN apt update -y
    RUN apt install -y openvpn | echo "y"
    RUN apt install  -y curl| echo "y"

    WORKDIR /home
    
    COPY autovpn3.sh ./
    RUN chmod +x ./autovpn3.sh && ./autovpn3.sh | echo "Y"


    RUN curl -sSfL https://raw.githubusercontent.com/ddosify/ddosify/master/scripts/install.sh | sh
    WORKDIR /home