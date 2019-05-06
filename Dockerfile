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
    texlive-fonts-extra \
    texlive-fonts-extra-links \
    texlive-fonts-recommended \
    texlive-formats-extra \
    texlive-games \
    texlive-humanities \
    texlive-lang-cyrillic \
    texlive-lang-english \
    texlive-lang-european \
    texlive-lang-french \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-metapost \
    texlive-music \
    texlive-pictures \
    texlive-plain-generic \
    texlive-pstricks \
    texlive-publishers \
    texlive-science \
    texlive-xetex \
    scalable-cyrfonts-tex \
    tipa \
    vprerex \
    xindy \
    texlive-generic-extra \
    make \
    fonts-liberation \
    poppler-utils

WORKDIR /root
COPY pscyr-install.sh PSCyr-0.4-beta9-tex.tar.gz PSCyr-0.4-beta9-type1.tar.gz /root/
RUN chmod 775 pscyr-install.sh 
RUN mkdir -p /root/texmf
#ENV DEST_DIR=`kpsewhich -expand-var='$TEXMFHOME'`
ENV DEST_DIR=/root/texmf
RUN bash /root/pscyr-install.sh
