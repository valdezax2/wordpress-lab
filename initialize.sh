#update system
sudo yum update
sudo yum install httpd -y

#start http server daemon and run at startup
sudo systemctl start httpd
sudo systemctl enable httpd

#install php
sudo yum install php -y
sudo yum install php-mysqli -y

#restart http server daemon
sudo systemctl restart httpd

#install wordpress
cd /var/www/html
sudo wget http://wordpress.org/latest.tar.gz
sudo tar -xzvf latest.tar.gz

#copy wordpress config file
cd wordpress
sudo cp wp-config-sample.php wp-config.php


#install mariadb database
sudo yum install mariadb105-server.x86_64 -y
sudo systemctl start mariadb
sudo mysqladmin -u root create blog



