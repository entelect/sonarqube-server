if [ ! -f "/home/ubuntu/.ssh/id_rsa" ]; then
  ssh-keygen -t rsa -N "" -f /home/ubuntu/.ssh/id_rsa
fi

cp /home/ubuntu/.ssh/id_rsa.pub /vagrant/control.pub

cat << 'SSHEOF' > /home/ubuntu/.ssh/config
Host *
  StrictHostKeyChecking no
  UserKnownHostsFile=/dev/null
SSHEOF

chown -R ubuntu:ubuntu /home/ubuntu/.ssh/

sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Optional installation of extra roles from Ansible Galaxy
# cd /vagrant
# ansible-galaxy install -r requirements.yml
