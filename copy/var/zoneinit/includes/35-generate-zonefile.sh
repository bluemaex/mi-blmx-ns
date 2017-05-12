# Setup cron for generating ns information
COMMAND='/opt/blmx/bin/generate-zonefiles.sh'
CRON="0,10,20,30,40,50 * * * * $COMMAND"
(crontab -l 2>/dev/null || true; echo "$CRON" ) | sort | uniq | crontab

# run command initally
$COMMAND
