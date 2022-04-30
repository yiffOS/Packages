#! /bin/bash

groupadd -g 41 postgres
useradd -c "PostgreSQL Server" -g postgres -d /srv/pgsql/data \
	-u 41 postgres
    
install -v -dm700 /srv/pgsql/data
install -v -dm755 /run/postgresql
chown -Rv postgres:postgres /srv/pgsql /run/postgresql