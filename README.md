PostgreSQL with Read Replica, Automatic Failover and Load Balancing

Introduction

This project sets up a highly available PostgreSQL environment using Docker. It features:
- Primary PostgreSQL instance that handles write operations.
- Read Replica for read-only operations.
- Patroni for automatic failover, where the replica is promoted to the primary if the primary instance goes down.
- etcd for leader election to decide which node should be primary.
- HAProxy for routing database traffic and redirecting it in case of failover.

Project Structure

1. Primary PostgreSQL: Handles all write operations.
2. Replica PostgreSQL: Handles read operations and replicates from the primary.
3. Patroni: Manages failover and replication.
4. etcd: A distributed key-value store that helps manage leader election for failover.
5. HAProxy: Ensures the application always connects to the current primary database.

Requirements

- Docker
- Docker Compose

Getting Started

Clone the repository

First, clone the repository:

