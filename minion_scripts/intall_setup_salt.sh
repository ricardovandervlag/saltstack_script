# Add master IPv4 ad the end of the script

# Install Salt 
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh

# Setup master
echo '#master: salt' >> /etc/salt/minion
echo "master: $1" >> /etc/salt/minion