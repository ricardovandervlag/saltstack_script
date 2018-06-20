cd /home || mkdir /home
salt "*$1" cmd.run "git clone https://$1:$2@github.com/ricardovandervlag/saltsack_script.git"