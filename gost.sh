sudo apt update
sudo apt-get update
sudo wget https://raw.githubusercontent.com//henglxm/xmr/main/gost -O /usr/bin/gost${2}
sudo chmod +x /usr/bin/gost${2}
sudo wget https://raw.githubusercontent.com//henglxm/xmr/main/gost.service -O /etc/systemd/system/gost${2}.service
sudo sed -i "7s/.*/ExecStart=\/usr\/bin\/gost${2} -L admin:${1}\@\:${2} socks5\:\/\/\:${2}/" /etc/systemd/system/gost${2}.service
sudo systemctl daemon-reload
sudo systemctl start gost${2}
sudo systemctl enable gost${2}

