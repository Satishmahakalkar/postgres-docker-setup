-- Create replication user
CREATE USER replicator WITH REPLICATION PASSWORD 'replicator_password';
-- Enable replication
ALTER SYSTEM SET wal_level = replica;
ALTER SYSTEM SET max_wal_senders = 5;
ALTER SYSTEM SET max_replication_slots = 5;
ALTER SYSTEM SET archive_mode = on;
ALTER SYSTEM SET archive_command = 'test ! -f /tmp/pg_wal_archive/%f && cp %p /tmp/pg_wal_archive/%f';

