FROM ubuntu:18.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
RUN apt-get install -y -q texlive-full
RUN apt-get install -y -q make texlive-xetex texlive-generic-extra texlive-lang-cyrillic latexmk biber