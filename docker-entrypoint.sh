#!/bin/bash

crontab /crontab
/etc/init.d/cron start

/usr/bin/FAHClient --user=$IDENTITY --team=$TEAM --power=$POWER --allow="$ALLOWED_HOSTS" --web-allow="$ALLOWED_HOSTS"

