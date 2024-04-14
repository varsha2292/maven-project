#/bin/bash

export Node_IP="Node_IP"

sudo env

echo $Node_IP

echo 'Deployment..'
sudo yum install httpd -y
sudo yum install elinks -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo rm -rf /var/www/html/*
sudo rsync -avt webapp/target/webapp /var/www/html
sudo elinks  http://${Node_IP}/webapp/
sudo elinks  http://${Node_IP}/webapp/index_dev.jsp
sudo elinks  http://${Node_IP}/webapp/index.html
sudo curl -kv http://${Node_IP}/webapp/index_dev.jsp