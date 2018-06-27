# Install Salt Master
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh -M
rm install_salt.sh

# Setup master
sh -c "echo '127.0.0.1 salt' >> /etc/hosts"

# Enable services
service salt-minion start
service salt-master start