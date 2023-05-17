#!/bin/bash
cd /home/ec2-user/
sudo yum update -y
sudo yum install git -y
sudo amazon-linux-extras install -y nginx1
echo "server {
    listen 80;
    server_name example.com;
    location / {
        root /var/www/html;
        index index.html;
    }
}" > /etc/nginx/conf.d/server.conf
systemctl restart nginx service
sudo git clone https://github.com/jeevan-nag/Terraform_basics.git
curl -fsSL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs
# curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# echo 'export NVM_DIR="/home/ec2-user/.nvm"' >> /home/ec2-user/.bashrc
# source /home/ec2-user/.nvm/nvm.sh
# source /home/ec2-user/.bashrc
# nvm install 16 -g
# Install PM2
sudo npm install pm2@latest -g
cd Terraform_basics
sudo git checkout -f master
npm install
cd /Terraform_basics/
pm2 start app.js