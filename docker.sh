sudo dnf update -y
sudo dnf install -y docker 
sudo systemctl start docker
sudo systemctl enable --now docker
sudo usermod -aG docker ec2-user
chmod 666 /var/run/docker.sock
