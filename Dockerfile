FROM ubuntu:16.04

# ... do your other task related docker setup

ENV DEBIAN_FRONTEND noninteractive


RUN apt-get update 
RUN apt-get -y --no-install-recommends install apt-utils 
RUN apt-get upgrade -y
RUN apt-get install -y ca-certificates
RUN apt-get install -y cron supervisor python3-dev python3 python3-pip wget unzip 

RUN pip3 install --upgrade pip
RUN pip3 install setuptools