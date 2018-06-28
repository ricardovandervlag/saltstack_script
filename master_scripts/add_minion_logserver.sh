# Add minion to logserver
salt "*$1" cmd.run 'curl -sS -O http://salt/nagioslogserver/scripts/setup-linux.sh; bash setup-linux.sh -s salt -p 5544; rm setup-linux.sh'