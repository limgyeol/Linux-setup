dnf update -y
dnf install -y docker 
systemctl start docker
systemctl enable --now docker
usermod -aG docker ec2-user
chmod 666 /var/run/docker.sock
