FROM ablu/ubuntu-texlive-full

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q make texlive-xetex texlive-generic-extra texlive-lang-cyrillic latexmk biber