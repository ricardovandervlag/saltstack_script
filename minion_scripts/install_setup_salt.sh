# Add master IPv4/IPv6 ad the end of the script

# Install Salt Minion
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh
rm install_salt.sh

# Setup master
sh -c "echo '$1 salt' >> /etc/hosts"

# Enable service
service salt-minion start