cd /home/saltstack_scripts
salt "*$1" cmd.run 'git pull'