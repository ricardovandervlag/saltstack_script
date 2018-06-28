# Change directory to script repo
cd /home/saltstack_scripts/master_scripts
# Install and setup salt master
bash install_setup_salt.sh
# Restarting services
service salt-minion restart
service salt-master restart
# Print all keys
salt-key --list-all
# Accepting all minions
salt-key --accept-all -y
# Update repo on all machines
bash update_local_repo.sh
# Update all machines
bash update_upgrade_all.sh