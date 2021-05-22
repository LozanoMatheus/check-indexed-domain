FROM python:rc-slim

RUN apt update \
  && apt install -y curl \
  && cd /tmp \
  && curl -Lso googler.deb https://github.com/jarun/googler/releases/download/v4.3.2/googler_4.3.2-1_debian10.amd64.deb \
  && apt install -y /tmp/googler.deb \
  && apt clean all \
  && rm -f /tmp/googler.deb

ENV MY_WORKDIR=/opt/googler

COPY domains.txt googler.sh ${MY_WORKDIR}/

WORKDIR ${MY_WORKDIR}

CMD [ "/opt/googler/googler.sh" ]
