cd /home || mkdir /home
salt "$1" cmd.run "git clone https://$2:$3@github.com/ricardovandervlag/saltsack_script.git"