# Change directory to script repo
cd /home/saltstack_scripts
# Install and setup salt master
bash master_scripts/install_setup_salt.sh
bash accept_all_minions.sh
# Update repo on all machines
bash update_local_repo.sh
# Update all machines
bash update_upgrade_all.sh