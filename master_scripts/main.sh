# Change directory to script repo
cd /home/saltstack_scripts/master_scripts
# Install and setup salt master
bash install_setup_salt.sh
# Restarting services
service salt-minion restart
service salt-master restart
# Print all keys
salt-key --list-all
echo 'If not all minions were listed/accepted, please press ^C and restart script'
sleep 10
# Accepting all minions
salt-key --accept-all -y
# Update all machines
bash update_upgrade_all.sh
# Install Nagios
bash nagios_setup.sh
# Add all minions to logserver
bash add_minion_logserver.sh