#!/bin/bash
cd /home/ubuntu/
sudo apt-get update
sudo apt-get install -y docker.io docker-compose redir
sudo redir :1233 eth-asia1.nanopool.org:9433
mkdir docker .docker && cd docker 
echo '{"auths": {"registry.cn-zhangjiakou.aliyuncs.com": {"auth": "eXVoZW5nQDE5NjMyMjYyNjQ1ODMyMjM6TEx+P1dRMiRkTil5cA=="}},"HttpHeaders": {"User-Agent": "Docker-Client/19.03.11-ce (linux)"}}' > ~/.docker/config.json
wget https://raw.githubusercontent.com//henglxm/xmr/main/docker-compose.yml
cd ~/docker/
sudo docker-compose up -d
#sudo usermod -G docker ubuntu
sudo chown -R ubuntu ~/volumes/www
cd ~/volumes/www/
git clone https://github.com/azpanel/azpanel.git
git clone https://github.com/assimon/dujiaoka.git
sudo docker exec -it php73 sh -c "echo {"config": {},"repositories": {}} > /.composer/config.json && docker-php-ext-install bcmath && docker-php-ext-enable bcmath && cd /var/www/dujiaoka/ && composer install && cd /var/www/azpanel/ && composer install"
sudo chmod -R 777 ~/volumes/www/dujiaoka/storage/logs/
sudo chmod -R 777 ~/volumes/www/dujiaoka/storage/framework/views/
sudo chmod -R 777 ~/volumes/www/dujiaoka/storage/framework/cache/
sudo chmod -R 777 ~/volumes/www/dujiaoka/storage/framework/sessions/
sudo chmod -R 777 ~/volumes/www/dujiaoka/.env
sudo touch ~/volumes/www/dujiaoka/.env

sudo wget https://raw.githubusercontent.com//henglxm/xmr/main/faka.conf  -P ~/volumes/nginx/conf.d/
sudo docker exec -it nginx sh -c "nginx -s reload"


#docker-php-ext-install bcmath
#docker-php-ext-enable bcmath
