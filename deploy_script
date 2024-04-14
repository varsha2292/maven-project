#/bin/bash

echo 'Deployment..'
sh 'sudo yum install httpd -y'
sh 'sudo yum install elinks -y'
sh 'sudo systemctl start httpd'
sh 'sudo systemctl enable httpd'
sh 'sudo rm -rf /var/www/html/*'
sh 'sudo rsync -avt webapp/target/webapp /var/www/html'
sh 'sudo elinks  http://${Node_IP}/webapp/'
sh 'sudo elinks  http://${Node_IP}/webapp/index_dev.jsp'
sh 'sudo elinks  http://${Node_IP}/webapp/index.html'
sh 'sudo curl -kv http://${Node_IP}/webapp/index_dev.jsp'