#!/bin/bash
echo "CRON from cronjob.sh"
docker-compose -f /opt/prj/docker-firefly-iii/docker/docker-compose.yml exec -u www-data fireflyiii php artisan firefly:cron
echo "=====End===="
