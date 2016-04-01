A simple container that creates an ssh listener that requires a valid public key to connect.

Usage:

```
docker run \
  -e SSH_KEY_1="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtQdLYRTPXjI... foo@example.com" \
  -e SSH_KEY_2="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtQdLYRTPXjI... foo@example.com" \
  -p 3022:22 varju/postgres-bastion

ssh -p 3022 root@localhost
```

Optional environment variables to make it easier to connect to a backend Postgres instance:

```
PGHOST=host
PGPORT=5432
PGDATABASE=dbname
PGUSER=user
PGPASSWORD=password
```
