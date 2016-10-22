#/bin/bash

export EVENTSTORE_EXT_IP=`ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
export EVENTSTORE_INT_IP=`ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
export EVENTSTORE_CLUSTER_SIZE=3
export EVENTSTORE_CLUSTER_DNS=escluster.net
export EVENTSTORE_CLUSTER_GOSSIP_PORT=2113
exec eventstored


