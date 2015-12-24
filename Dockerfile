# gemicom 本体
#
# VERSION               0.0.1

FROM      gendosu/ubuntu-base:latest

MAINTAINER Gen Takahashi "gen.takahashi@gmail.com"

RUN apt-get update; apt-get -y upgrade

RUN apt-get -y --force-yes install \
  openjdk-7-jdk

RUN curl --create-dirs -o /root/.embulk/bin/embulk -L "http://dl.embulk.org/embulk-latest.jar"
RUN chmod +x /root/.embulk/bin/embulk
ENV PATH=/root/.embulk/bin:$PATH

