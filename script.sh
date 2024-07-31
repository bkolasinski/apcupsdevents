#!/bin/bash
cp /var/log/apcupsd.events /root/apcupsdevents/apcupsd.events
git add *
git commit -m "auto"
cit push
