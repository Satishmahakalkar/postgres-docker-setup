#!/bin/bash
# This script will trigger failover when the primary PostgreSQL goes down.

# Get the node ID of the new primary
PRIMARY=$(pg_ctlcluster 13 main status | grep "primary" | awk '{print $1}')
REPLICA=$(pg_ctlcluster 13 main status | grep "replica" | awk '{print $1}')

# Promote the replica to primary
pg_ctlcluster 13 main promote --node $REPLICA

# Update pgpool.conf to reflect the new primary
sed -i "s/0=$PRIMARY/0=$REPLICA/g" /etc/pgpool2/pgpool.conf
pgpool reload

