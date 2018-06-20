# Install Salt Master
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh -M
rm install_salt.sh

# Install Salt Minion
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh
rm install_salt.sh

# Setup master
echo '#master: salt' >> /etc/salt/minion
echo "master: 127.0.0.1" >> /etc/salt/minion

# Enable services
service salt-minion start
service salt-master start