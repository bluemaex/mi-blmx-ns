#!/usr/bin/env bash
node /opt/blmx/generate-zonefile/generate-zonefile.js /opt/zonedata

cp /opt/zonedata/*.{conf,forward,reverse} /opt/local/etc/nsd/zones/
nsd-control reconfig > /dev/null
nsd-control reload > /dev/null
