#!/usr/bin/env bash

. env.db
docker-compose exec db mysqldump --single-transaction -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE | restic backup --stdin --stdin-filename /nextcloud-db.sql --tag sql --tag nextcloud

