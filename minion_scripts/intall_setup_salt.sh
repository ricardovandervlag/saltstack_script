# Add master IPv4/IPv6 ad the end of the script

# Install Salt Minion
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh
rm install_salt.sh

# Setup master
echo '#master: salt' >> /etc/salt/minion
echo "master: $1" >> /etc/salt/minion

# Enable service
service salt-minion start