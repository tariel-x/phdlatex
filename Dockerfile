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
    tipa \
    vprerex \
    xindy \
    texlive-generic-extra \
    make