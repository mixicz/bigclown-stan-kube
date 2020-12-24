# BigClown mqtt2influxdb
FROM python:3-slim

VOLUME /tmp

# Dependencies
RUN pip3 install --upgrade --no-cache-dir mqtt2influxdb ; mkdir /etc/hardwario ; \
    adduser --disabled-password --gecos='Application user,,,' --uid 3002 --home /app app; chown app:app /etc/hardwario /tmp

USER app
WORKDIR /app

COPY --chown=app:app config/mqtt2influxdb.yml /etc/hardwario/

CMD ["mqtt2influxdb", "-c", "/etc/hardwario/mqtt2influxdb.yml"]


