#!/bin/bash
now=$(date)
echo "=====$now====="
/usr/local/bin/docker-compose -f /opt/prj/docker-firefly-iii/docker/docker-compose.yml exec -T -u www-data fireflyiii php artisan firefly:cron
