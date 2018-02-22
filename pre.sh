#------------------------------------------------------------------
# Install some prequisite packages, access, users after launch vm -
#------------------------------------------------------------------

#!/bin/bash

yum -y install epel-release; yum -y update ; yum -y upgrade  ; yum -y install  python python-pip vim

# add ansible user with passwd 12345
useradd -m -p paDQY21h.WZt. ansible

# add ansible key 
ansibleKey="your public key from ssh-keygen"

# uncomment if you have oyur public and private 
mkdir -p /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
echo $ansibleKey >> /home/ansible/.ssh/authorized_keys
chmod 600 /home/ansible/.ssh/authorized_keys

chown ansible:ansible /home/ansible -R
chown ansible:ansible /home/ansible -R

echo "ansible ALL=(ALL:ALL) ALL" >> /etc/sudoers

reboot



