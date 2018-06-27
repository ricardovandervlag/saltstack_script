sudo salt "*$1" cmd.run 'apt update; apt dist-upgrade -y'
