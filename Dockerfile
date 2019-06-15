FROM ubuntu:18.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata

RUN apt-get install -y -q asymptote \
    biber \
    chktex \
    cm-super \
    context \
    dvidvi \
    dvipng \
    feynmf \
    fragmaster \
    info \
    lacheck \
    latex-cjk-all \
    latexdiff \
    latexmk \
    lcdf-typetools \
    lmodern \
    prerex \
    psutils \
    purifyeps \
    t1utils \
    tex-gyre \
    texinfo \
    texlive-base \
    texlive-bibtex-extra \
    texlive-binaries \
    texlive-extra-utils \
    texlive-font-utils \
    texlive-fonts-recommended \
    texlive-formats-extra \
    texlive-humanities \
    texlive-lang-cyrillic \
    texlive-lang-english \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-metapost \
    texlive-pictures \
    texlive-plain-generic \
    texlive-pstricks \
    texlive-publishers \
    texlive-science \
    texlive-xetex \
    tipa \
    vprerex \
    xindy \
    texlive-generic-extra \
    make \
    fonts-liberation \
    poppler-utils 

# For fonts:
RUN DEBIAN_FRONTEND=noninteractive apt install -y wget cabextract xfonts-utils 

WORKDIR /root

# TTF Fonts
COPY scalable-cyrfonts-tex-shurph_4.16_all-from-yd.deb ttf-mscorefonts-installer_3.7_all-from-debian.deb /root/
RUN dpkg -i scalable-cyrfonts-tex-shurph_4.16_all-from-yd.deb ttf-mscorefonts-installer_3.7_all-from-debian.deb

RUN DEBIAN_FRONTEND=noninteractive apt install -y texlive-lang-french

# PSCyr
COPY pscyr-install.sh PSCyr-0.4-beta9-tex.tar.gz PSCyr-0.4-beta9-type1.tar.gz /root/
RUN chmod 775 pscyr-install.sh 
RUN mkdir -p /root/texmf
#ENV DEST_DIR=`kpsewhich -expand-var='$TEXMFHOME'`
ENV DEST_DIR=/root/texmf
RUN bash /root/pscyr-install.sh

RUN DEBIAN_FRONTEND=noninteractive  apt install -y make

RUN mkdir /root/latexsource
WORKDIR /root/latexsource