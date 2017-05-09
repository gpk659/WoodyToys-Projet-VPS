FROM centos:centos7
MAINTAINER HE201228@students.ephec.be

RUN yum update -y
#to Enable EPEL
RUN yum install -y epel-release
RUN yum install -y git kernel-headers gcc gcc-c++ cpp ncurses ncurses-devel libxml2 libxml2-devel sqlite sqlite-devel openssl-devel newt-devel kernel-devel libuuid-devel net-snmp-devel xinetd tar jansson-devel make bzip2 gettext

WORKDIR /tmp
# pjproject is needed to run asterisk 13
#Asterisk 12 and 13 dynamically link to pjproject.
RUN git clone -b pjproject-2.4.5 --depth 1 https://github.com/asterisk/pjproject.git

# Build the project
WORKDIR /tmp/pjproject
RUN ./configure --prefix=/usr --libdir=/usr/lib64 --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr 1> /dev/null
RUN make dep 1> /dev/null
RUN make 1> /dev/null
RUN make install
# Reload cnfig
RUN ldconfig
RUN ldconfig -p | grep pj

ENV AUTOBUILD_UNIXTIME 123124
WORKDIR /tmp

# Download asterisk.
# Source : https://hub.docker.com/r/qxip/docker-asterisk-hep/~/dockerfile/
RUN git clone -b certified/13.8 --depth 1 https://gerrit.asterisk.org/asterisk
WORKDIR /tmp/asterisk

# Configure
RUN ./configure --libdir=/usr/lib64 1> /dev/null
# Remove the native build option
# from: https://wiki.asterisk.org/wiki/display/AST/Building+and+Installing+Asterisk
# Using Menuselect to Select Asterisk Options
# from : https://wiki.asterisk.org/wiki/display/AST/Using+Menuselect+to+Select+Asterisk+Options
RUN make menuselect.makeopts
RUN menuselect/menuselect \
  --disable BUILD_NATIVE \
  --enable cdr_csv \
  --enable chan_sip \
  --enable res_snmp \
  --enable res_http_websocket \
  --enable res_hep_pjsip \
  --enable res_hep_rtcp \
  menuselect.makeopts

# Continue with a standard make.
# Redirection de la sortie standard (handle de fichier 1) vers / dev / null
RUN make 1> /dev/null
RUN make install 1> /dev/null
RUN make samples 1> /dev/null
WORKDIR /

# Update max number of open files.
RUN sed -i -e 's/# MAXFILES=/MAXFILES=/' /usr/sbin/safe_asterisk

# Copy config files to appropriate directory
# ajoute mes fichiers de conf dans cette chemin
ADD users.conf /etc/asterisk/users.conf
ADD sip.conf /etc/asterisk/sip.conf
ADD extensions.conf /etc/asterisk/extensions.conf
ADD voicemail.conf /etc/asterisk/voicemail.conf

# Le port 5060 c'est pour l'auth SIP, apres il faut ouvrir les port UDP pour la communication
#  Other SIP servers may need TCP port 5060 as well 
# Source : https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers
# Source : http://www.adminsub.net/tcp-udp-port-finder/16394
EXPOSE 5060/udp
EXPOSE 5060/tcp
# protocol TCP et UDP
EXPOSE 9080
# Real-time Transport Protocol (RTP)
EXPOSE 16384/udp
EXPOSE 16385/udp
EXPOSE 16386/udp
# Real-time Transport Protocol (RTP)
EXPOSE 16387/udp
EXPOSE 16388/udp
EXPOSE 16389/udp
EXPOSE 16390/udp
EXPOSE 16391/udp
EXPOSE 16392/udp
# Real-time Transport Protocol (RTP)
EXPOSE 16393/udp
EXPOSE 16394/udp


CMD asterisk -f
