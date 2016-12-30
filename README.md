# Docker Eventstore Cluster

- Spins up a three node https://geteventstore.com/ cluster, replicating data between a master and two slaves.
- Cluster member discovery via DNS.

## Getting Started

Requires Docker Engine and Docker Compose. ( https://www.docker.com/technologies/overview )

1. ```make deploy```. Or maybe ```sudo make deploy```

2. Browse to http://<ip.address.of.your.docker.host>:2114/web/index.html#/clusterstatus. Log in with user "admin", password "changeit". 

## Warning

Not for production use. An eventstore cluster where all nodes reside on the same Docker host isn't very safe. Pull requests welcome.


