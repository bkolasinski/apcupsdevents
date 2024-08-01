#!/bin/bash
cd /root/apcupsdevents/
git pull
diff -u /root/apcupsdevents/apcupsd.events /var/log/apcupsd.events | grep -E '^\+[^+]' | sed 's/^+//' >>/root/apcupsdevents/apcupsd.events
cat apcupsd.events | grep -a "Power failure" >power_failure
git add *
git commit -m "auto"
git push
