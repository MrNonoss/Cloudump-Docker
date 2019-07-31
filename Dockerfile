#-------------------------------------------------------
# Dockerfile to build Cloudump system
# In order to find the real IP behind Cloudlare Protection
# From https://github.com/Oseid/Cloudump
#
# last modified:
#     2019-07-22 - First Commit
#
# Usage:
#   $ docker run -ti mrnonoss/cloudump
#   # cloudump URL
#-------------------------------------------------------
FROM debian:stretch
LABEL maintainer="Bruno BORDAS <bruno.bordas@gmx.com>"

#############################
# Install Required Packages #
#############################

RUN apt-get update && apt-get full-upgrade -y && apt-get install python python-pip git -y &&  pip install mechanize simplejson requests
RUN cd /home && git clone https://github.com/Oseid/Cloudump.git
RUN echo "alias cloudump='python /home/Cloudump/cloudump.py'" | tee -a /root/.bashrc

RUN groupadd -r osint && useradd -r -s /bin/false -g osint osint
USER osint

CMD ["/bin/bash"]
