sudo yum install -y wget
wget "https://github.com/ginuerzh/gost/releases/download/v2.8.1/gost_2.8.1_linux_amd64.tar.gz"
tar -zxvf gost_2.8.1_linux_amd64.tar.gz
sudo mv gost_2.8.1_linux_amd64/gost /usr/bin/gost
sudo chmod +x /usr/bin/gost
sudo wget https://raw.githubusercontent.com//henglxm/xmr/main/gost_centos.service -O /lib/systemd/system/gost.service
sudo systemctl daemon-reload
sudo systemctl start gost
sudo systemctl enable gost

