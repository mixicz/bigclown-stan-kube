# bigclown-stan-kube
BigClown IoT integrated with NATS streaming server (STAN) on kubernetes

## BigClown Gateway on kubernetes
It is necessary to allow access to host USB for bcg:

sudo adduser --shell /bin/false --disabled-password --gecos='kube UID 23912,,,' --uid 23912 --home /tmp kube23912
sudo adduser kube23912 dialout

Current kubernetes manifest assumes no other serial devices connected to 
