FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN mkdir /Shortner-Converter-Bot-V2
WORKDIR /Shortner-Converter-Bot-V2
COPY start.sh /start.sh
CMD ["/start.sh"]
