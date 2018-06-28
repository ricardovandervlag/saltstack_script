# Change directory to script repo
cd /home/saltstack_scripts/master_scripts
# Install and setup salt master
bash install_setup_salt.sh
# Restarting services
service salt-minion restart
service salt-master restart
# Waiting for minions 1
echo 'Waiting for minions (10 seconds)'
sleep 10
# Waiting for minions 2
echo 'Waiting for minions (10 seconds)'
sleep 10
# Waiting for minions 3
echo 'Waiting for minions (10 seconds)'
sleep 10
# Print all keys
salt-key --list-all
# Accepting all minions
salt-key --accept-all -y
# Update repo on all machines
bash update_local_repo.sh
# Update all machines
bash update_upgrade_all.sh