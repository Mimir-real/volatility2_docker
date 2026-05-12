FROM python:2
RUN /bin/bash -c 'echo -e "deb http://archive.debian.org/debian-archive/debian/ buster main contrib non-free\ndeb http://archive.debian.org/debian-archive/debian-security/ buster/updates main contrib non-free" > /etc/apt/sources.list'
RUN apt update 
RUN apt install git
RUN useradd -m -s /bin/bash vol_user
USER vol_user
WORKDIR /home/vol_user
RUN git clone https://github.com/volatilityfoundation/volatility.git
RUN pip install pycrypto
RUN pip install distorm3
RUN pip install ./volatility

ENTRYPOINT /bin/bash -l
