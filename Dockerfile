FROM gcc:5.4

MAINTAINER mradugin "https://github.com/mradugin"

RUN apt-get update
RUN apt-get install -y --force-yes cmake make gnu-efi
RUN apt-get clean

RUN git clone https://github.com/mradugin/cmake-findefi /root/cmake-findefi

