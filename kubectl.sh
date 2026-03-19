#x86(amd64)
LATEST=$(curl -L -s https://dl.k8s.io/release/stable.txt)
curl -LO "https://dl.k8s.io/release/${LATEST}/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/${LATEST}/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
chmod +x
mv ./kubectl ~/.local/bin/kubectl


#arm64
LATEST=$(curl -L -s https://dl.k8s.io/release/stable.txt)
curl -LO "https://dl.k8s.io/release/${LATEST})/bin/linux/arm64/kubectl"
curl -LO "https://dl.k8s.io/release/${LATEST}/bin/linux/arm64/kubectl.sha256"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
chmod +x kubectl
mv ./kubectl ~/.local/bin/kubectl