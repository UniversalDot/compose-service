ssh-copy-id root@ip

# add user
adduser udot && usermod -aG sudo udot

# password for sudo - off
# sudo visudo
# %sudo ALL=(ALL:ALL) NOPASSWD:ALL

ssh-copy-id udot@ip

# no root & no pwd
# https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-on-ubuntu-20-04-ru
sudo vim /etc/ssh/sshd_config
#AllowUsers udot
#PermitRootLogin no
#PasswordAuthentication no
sudo systemctl restart sshd

# config firewall 
#https://www.digitalocean.com/community/tutorials/ufw-essentials-common-firewall-rules-and-commands
sudo ufw allow OpenSSH && sudo ufw allow http && sudo ufw allow https
sudo ufw allow 5000/tcp
sudo ufw allow 60000:61000/udp # for mosh
sudo ufw enable
sudo ufw disable

sudo ufw status