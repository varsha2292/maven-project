#/bin/bash

echo $1

echo 'Deployment..'
sudo yum install httpd -y
sudo yum install elinks -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo rm -rf /var/www/html/*
sudo rsync -avt webapp/target/webapp /var/www/html
sudo elinks  http://$1/webapp/
sudo elinks  http://$1/webapp/index_dev.jsp
sudo elinks  http://$1/webapp/index.html
sudo curl -kv http://$1/webapp/index_dev.jsp