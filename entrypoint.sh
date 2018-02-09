#!/bin/sh

for i in `printenv | grep ^MMS_`
do
  KEY=$(echo $i| cut -d'_' -f 2 | cut -d'=' -f 1)
  VAL=$(echo $i| cut -d'=' -f 2)
  echo "Setting $KEY to $VAL"
  echo "$KEY=$VAL" >> monitoring-agent.config
done

./mongodb-mms-monitoring-agent
