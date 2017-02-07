FROM ubuntu:14.04

MAINTAINER Andrey <andreyk@hadoopware.io>


#################### BEGIN INSTALLATION #############################
RUN apt-get update && apt-get install -y  curl software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN add-apt-repository ppa:fkrull/deadsnakes
RUN apt-get update
RUN apt-get install -y python python-pip
RUN apt-get install -y nodejs git
#RUN npm install forever -g
#RUN npm install grunt node-gyp
#RUN npm install -g bower grunt-cli
RUN npm install -g hexo-cli 

RUN groupadd -r hadoopware && useradd -r -g hadoopware hadoopware 
ENV INSTALL_HOME="/opt/hadoopware.io"
#################### INSTALLATION END #############################


#################### Start Hexo ################################
ENV HW_REPOSITORY_URL="https://github.com/hadoopware/hadoopware.io.git"
RUN git clone $HW_REPOSITORY_URL $INSTALL_HOME

## Run ##
CMD ["$INSTALL_HOME/bin/start.sh"]


