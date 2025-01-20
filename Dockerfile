FROM pgpool/pgpool:latest

COPY pgpool.conf /etc/pgpool2/pgpool.conf
COPY failover.sh /scripts/failover.sh
RUN chmod +x /scripts/failover.sh

