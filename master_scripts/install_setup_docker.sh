echo 'Please enter root password for Database'
read password
# Salt install docker
salt "*$1" cmd.run 'apt install docker -y'
# Setup docker-compose.yml
salt "*$" cmd.run 'touch docker-compose.yml'
salt "*$" cmd.run "echo 'wordpress:' >> docker-compose.yml"
salt "*$" cmd.run "echo '  image: wordpress' >> docker-compose.yml"
salt "*$" cmd.run "echo '  links' >> docker-compose.yml"
salt "*$" cmd.run "echo '    - wordpress_db:mysql' >> docker-compose.yml"
salt "*$" cmd.run "echo '  ports:' >> docker-compose.yml"
salt "*$" cmd.run "echo '    - 8080:80' >> docker-compose.yml"
salt "*$" cmd.run "echo 'wordpress_db:' >> docker-compose.yml"
salt "*$" cmd.run "echo '  image: mariadb' >> docker-compose.yml"
salt "*$" cmd.run "echo '  environment:' >> docker-compose.yml"
salt "*$" cmd.run "echo '    MYSQL_ROOT_PASSWORD: $password' >> docker-compose.yml"
salt "*$" cmd.run "echo '  volumes:' >> docker-compose.yml"
salt "*$" cmd.run "echo '    - ~/wordpress/wp_html:/var/www/htm' >> docker-compose.yml"
salt "*$" cmd.run "echo 'phpmyadmin:' >> docker-compose.yml"
salt "*$" cmd.run "echo '  image: corbinu/docker-phpmyadmin' >> docker-compose.yml"
salt "*$" cmd.run "echo '  links:' >> docker-compose.yml"
salt "*$" cmd.run "echo '    - wordpress_db:mysql' >> docker-compose.yml"
salt "*$" cmd.run "echo '  ports:' >> docker-compose.yml"
salt "*$" cmd.run "echo '    - 8181:80' >> docker-compose.yml"
salt "*$" cmd.run "echo '  environment:' >> docker-compose.yml"
salt "*$" cmd.run "echo '    MYSQL_USERNAME: root' >> docker-compose.yml"
salt "*$" cmd.run "echo '    MYSQL_ROOT_PASSWORD: $password' >> docker-compose.yml"
# Start Wordpress
salt "*$" cmd.run 'docker-compose up'