#!/bin/bash
echo "CRON from cronjob.sh"
/usr/local/bin/docker-compose -f /opt/prj/docker-firefly-iii/docker/docker-compose.yml exec -T -u www-data fireflyiii php artisan firefly:cron
echo "=====End===="
