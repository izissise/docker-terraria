# Terraria 1.2.4.1
# Version latest

FROM	  ubuntu

MAINTAINER	izissise <morisset.hugues@gmail.com>

RUN apt-get -y update

RUN apt-get -y install wget unzip mono-complete

RUN mkdir tshock && wget "https://github.com/NyxStudios/TShock/releases/download/v4.2301/TShock.4.2.3.0720.zip" -O TShock.zip && unzip TShock.zip -d tshock/

ADD run.sh /
RUN chmod 755 run.sh

CMD ["./run.sh"]

EXPOSE 7777
