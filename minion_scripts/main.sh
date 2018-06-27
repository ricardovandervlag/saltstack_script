cd /home/saltstack_scripts
echo 'Please enter the IPv4 addr for salt master'
read maser_ip
bash minion_scripts/install_setup_salt.sh $maser_ip