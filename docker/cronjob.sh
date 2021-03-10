#!/bin/bash
# crontab -e example:
# 0 3 * * * /opt/prj/docker-firefly-iii/docker/cronjob.sh >> /opt/prj/docker-firefly-iii/docker/cron.log 2>&1
now=$(date)
echo "=====$now====="
/usr/local/bin/docker-compose -f /opt/prj/docker-firefly-iii/docker/docker-compose.yml exec -T -u www-data fireflyiii php artisan firefly:cron
