#!/bin/bash
git pull
cp /var/log/apcupsd.events /root/apcupsdevents/apcupsd.events
git add *
git commit -m "auto"
git push
