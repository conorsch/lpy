FROM ubuntu:trusty

# http://virtualplants.github.io/install/install_plantlab.html
RUN apt-get update
RUN apt-get install -y git gitk
RUN apt-get install -y python-pip scons zlib1g-dev libpng12-dev python-qt4
RUN apt-get install -y ipython ipython-qtconsole
RUN apt-get install -y python-numpy python-scipy python-matplotlib

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:christophe-pradal/openalea
RUN add-apt-repository -y ppa:christophe-pradal/vplants
RUN add-apt-repository -y ppa:christophe-pradal/alinea
RUN apt-get update
RUN apt-get install -y pyqglviewer
RUN apt-get install -y python-openalea python-vplants python-alinea
RUN apt-get install -y python-vplants.lpy

RUN git clone https://github.com/openalea/deploy /opt/openalea-deploy
RUN git clone https://github.com/openalea/sconsx /opt/openalea-sconsx

WORKDIR /opt/openalea-deploy
RUN python setup.py develop --user

WORKDIR /opt/openalea-sconsx
RUN python setup.py develop --user


RUN git clone https://github.com/openalea/openalea /opt/openalea-openalea
RUN git clone https://github.com/openalea/openalea-components /opt/openalea-components
RUN git clone https://github.com/openalea/plantlab /opt/openalea-platlab

RUN apt-get install -y aptitude
RUN aptitude search multisetup~n
RUN aptitude search easydev~n

RUN pip install easydev

WORKDIR /opt/openalea-openalea
RUN ls -l
RUN python multisetup.py install

WORKDIR /opt/openalea-components
RUN python multisetup.py install

RUN useradd -m -s /bin/bash user
USER user
RUN alea_config

#WORKDIR /opt/openalea-plantlab
#RUN python setup.py install

#ADD . /code
#WORKDIR /code
