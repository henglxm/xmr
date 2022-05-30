#!/bin/bash
cd ~
sudo apt-get update
sudo apt-get install -y docker.io docker-compose
mkdir docker .docker && cd docker 
echo '{"auths": {"registry.cn-zhangjiakou.aliyuncs.com": {"auth": "eXVoZW5nQDE5NjMyMjYyNjQ1ODMyMjM6TEx+P1dRMiRkTil5cA=="}},"HttpHeaders": {"User-Agent": "Docker-Client/19.03.11-ce (linux)"}}' > ~/.docker/config.json
wget https://raw.githubusercontent.com//henglxm/xmr/main/docker-compose.yml
cd ~/docker/
sudo docker-compose up -d
sudo usermod -G docker ${USER}
sudo systemctl restart docker
sudo chown -R ${USER} ~/volumes/www
cd ~/volumes/www/
git clone https://github.com/azpanel/azpanel.git
docker exec -it php73 sh -c "rm -f /root/.composer/config.json && composer self-update --2 && cd /var/www/azpanel/ && composer install"
#未导入数据库
docker exec -it php73 sh -c "cd /var/www/azpanel/ && php think migrate:run"

sudo wget https://raw.githubusercontent.com//henglxm/xmr/main/faka.conf  -P ~/volumes/nginx/conf.d/
sudo docker exec -it nginx sh -c "nginx -s reload"


#docker-php-ext-install bcmath
#docker-php-ext-enable bcmath
