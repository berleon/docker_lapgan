FROM biorobotics/arch-python
MAINTAINER github@leon-sixt.de

RUN pip install keras==0.1.3

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV PATH "/home/leon/anaconda3/bin:${PATH}"
COPY setup_lapgan_env.sh /usr/bin/setup_lapgan_env.sh
RUN chmod +x /usr/bin/setup_lapgan_env.sh

