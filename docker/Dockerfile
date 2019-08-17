FROM ubuntu:trusty

# http://virtualplants.github.io/install/install_plantlab.html
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:christophe-pradal/openalea
RUN add-apt-repository -y ppa:christophe-pradal/vplants
RUN add-apt-repository -y ppa:christophe-pradal/alinea
RUN apt-get update
RUN apt-get install -y \
        pyqglviewer \
        python-alinea \
        python-openalea \
        python-vplants \
        python-vplants.lpy

# ensure if necessary
RUN apt-get install -y pyqt4-dev-tools

RUN useradd -m -s /bin/bash user
USER user
RUN alea_config
