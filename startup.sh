#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install nginx -y 
sudo systemctl enable nginx
sudo systemctl start nginx
git clone https://git.eb.com/screening-ops/vala-ajuh.git
cd /vala-ajuh
pip install requirements.txt
echo "*/10 * * * * $SHELL remediation.sh" | crontab -