#!/usr/bin/env bash
DIR=$(dirname $0)

for file in /opt/zonedata/*; do
  DOMAIN=$(basename $file)
  DOMAIN=${DOMAIN:0:-5}
  printf "zone:\n\tname: \"$DOMAIN\"\n\tzonefile: \"zones/$DOMAIN.forward\"\n" > /opt/local/etc/nsd/zones/$DOMAIN-nsd.conf
  node $DIR/../generate-zonefile/generate-zonefile.js $file /opt/local/etc/nsd/zones/$DOMAIN.forward
done

nsd-control reconfig
nsd-control reload
