#!/bin/bash

WEBSITES="\
  https://kinoba.fr/ \
  https://portraitdepro.fr/ \
  https://sentry.portraitdepro.fr/ \
  https://app.highday.fr/ 
"

for site in $WEBSITES
do
if curl -I "$site" 2>&1 | grep -w "200\|301" ; then
    echo "$site is up"
else
    echo "$site is down"
    # post_to_slack $site
fi
echo "----------------------------------"
done
