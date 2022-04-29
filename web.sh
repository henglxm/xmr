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

sudo redir :9003 proxy.proxyguys.com:9003
sudo redir :9004 proxy.proxyguys.com:9004
sudo redir :9005 proxy.proxyguys.com:9005
sudo redir :9006 proxy.proxyguys.com:9006
sudo redir :9007 proxy.proxyguys.com:9007
sudo redir :9008 proxy.proxyguys.com:9008
sudo redir :9009 proxy.proxyguys.com:9009
sudo redir :9010 proxy.proxyguys.com:9010
sudo redir :9011 proxy.proxyguys.com:9011
sudo redir :9012 proxy.proxyguys.com:9012
sudo redir :9013 proxy.proxyguys.com:9013
sudo redir :9014 proxy.proxyguys.com:9014
sudo redir :9015 proxy.proxyguys.com:9015
sudo redir :9016 proxy.proxyguys.com:9016
sudo redir :9017 proxy.proxyguys.com:9017
sudo redir :9018 proxy.proxyguys.com:9018
sudo redir :9019 proxy.proxyguys.com:9019
sudo redir :9020 proxy.proxyguys.com:9020
sudo redir :9021 proxy.proxyguys.com:9021
sudo redir :9022 proxy.proxyguys.com:9022
sudo redir :9023 proxy.proxyguys.com:9023
sudo redir :9024 proxy.proxyguys.com:9024
sudo redir :9025 proxy.proxyguys.com:9025
sudo redir :9026 proxy.proxyguys.com:9026
sudo redir :9027 proxy.proxyguys.com:9027
sudo redir :9028 proxy.proxyguys.com:9028
sudo redir :9029 proxy.proxyguys.com:9029
sudo redir :9030 proxy.proxyguys.com:9030
sudo redir :9031 proxy.proxyguys.com:9031
sudo redir :9032 proxy.proxyguys.com:9032
sudo redir :9033 proxy.proxyguys.com:9033
sudo redir :9034 proxy.proxyguys.com:9034
sudo redir :9035 proxy.proxyguys.com:9035
sudo redir :9036 proxy.proxyguys.com:9036
sudo redir :9037 proxy.proxyguys.com:9037
sudo redir :9038 proxy.proxyguys.com:9038
sudo redir :9039 proxy.proxyguys.com:9039
sudo redir :9040 proxy.proxyguys.com:9040
sudo redir :9041 proxy.proxyguys.com:9041
sudo redir :9042 proxy.proxyguys.com:9042
sudo redir :9043 proxy.proxyguys.com:9043
sudo redir :9044 proxy.proxyguys.com:9044
sudo redir :9045 proxy.proxyguys.com:9045
sudo redir :9046 proxy.proxyguys.com:9046
sudo redir :9047 proxy.proxyguys.com:9047
sudo redir :9048 proxy.proxyguys.com:9048
sudo redir :9049 proxy.proxyguys.com:9049
sudo redir :9050 proxy.proxyguys.com:9050
sudo redir :9051 proxy.proxyguys.com:9051
sudo redir :9052 proxy.proxyguys.com:9052
sudo redir :9053 proxy.proxyguys.com:9053
sudo redir :9054 proxy.proxyguys.com:9054
sudo redir :9055 proxy.proxyguys.com:9055
sudo redir :9056 proxy.proxyguys.com:9056
sudo redir :9057 proxy.proxyguys.com:9057
sudo redir :9058 proxy.proxyguys.com:9058
sudo redir :9059 proxy.proxyguys.com:9059
sudo redir :9060 proxy.proxyguys.com:9060
sudo redir :9061 proxy.proxyguys.com:9061
sudo redir :9062 proxy.proxyguys.com:9062
sudo redir :9063 proxy.proxyguys.com:9063
sudo redir :9064 proxy.proxyguys.com:9064
sudo redir :9065 proxy.proxyguys.com:9065
sudo redir :9065 proxy.proxyguys.com:9065
sudo redir :9066 proxy.proxyguys.com:9066
sudo redir :9067 proxy.proxyguys.com:9067
sudo redir :9068 proxy.proxyguys.com:9068
sudo redir :9069 proxy.proxyguys.com:9069
sudo redir :9070 proxy.proxyguys.com:9070

#docker-php-ext-install bcmath
#docker-php-ext-enable bcmath
