sudo dnf update -y
sudo dnf install -y docker 
systemctl enable --now docker
usermod -aG docker ec2-user
chmod 666 /var/run/docker.sock