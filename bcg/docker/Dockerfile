# BigClown Gateway
FROM python:3-slim

VOLUME /tmp
VOLUME /config

# Dependencies
RUN pip3 install --upgrade --no-cache-dir bcg bcf bch ; \
    adduser --disabled-password --gecos='BigClown Gateway,,,' --uid 23912 --home /bcg bcg; chown bcg:bcg /config /tmp ; adduser bcg dialout

USER bcg
WORKDIR /bcg

COPY --chown=bcg:bcg start.sh /bcg/

CMD ["/bcg/start.sh"]

