#!/bin/bash
cd /root/apcupsdevents/
git pull
cat /root/apcupsdevents/apcupsd.events /var/log/apcupsd.events | uniq > /root/apcupsdevents/apcupsd.events
git add *
git commit -m "auto"
git push
