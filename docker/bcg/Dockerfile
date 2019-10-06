# BigClown Gateway
FROM python:3-slim

VOLUME /tmp
VOLUME /config

# Dependencies
RUN pip3 install --upgrade --no-cache-dir bcg ; \
    adduser --disabled-password --gecos='BigClown Gateway,,,' --home /bcg bcg; chown bcg:bcg /config /tmp

USER bcg
WORKDIR /bcg

CMD ["bcg", ""]

