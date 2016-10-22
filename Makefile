DNSSERVER_DIR := dns-server
CLUSTERNODE_DIR := es-cluster-node

.PHONY:  build_clusternode build_dnsserver build deploy start stop log

build_clusternode:
	cd $(CLUSTERNODE_DIR) && docker build -t es-cluster-node .

build_dnsserver:
	cd $(DNSSERVER_DIR) && docker build -t dns-server .

build: build_dnsserver build_clusternode

deploy: build
	docker-compose up -d

stop:
	docker-compose stop

start:
	docker-compose start

logs:
	docker-compose logs -f


