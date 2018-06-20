sudo apt install build-essential libgd-dev openssl libssl-dev unzip apache2 -ycd
sudo useradd nagios
sudo groupadd nagcmd
sudo usermod -a -G nagcmd nagios
wget https://assets.nagios.com/downloads/nagiosfusion/4/fusion-4.1.3.tar.gz
tar xzvf fusion-4.1.3.tar.gz
cd nagiosfusion
./configure --with-nagios-group=nagios --with-command-group=nagcmd
make -j4 all
sudo make install
sudo make install-commandmode
sudo make install-init
sudo make install-config
sudo /usr/bin/install -c -m 644 sample-config/httpd.conf /etc/apache2/sites-available/nagios.conf
sudo usermod -a -G nagcmd www-data