sudo ufw disable
sudo apt update && sudo apt upgrade -y
sudo apt install curl -y
sudo apt install -y net-tools

# Install k3s

echo "Installing k3s ..."
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --node-ip 192.168.56.110 --write-kubeconfig-mode 0644 --token 12345" sh -s -
echo 'alias k="kubectl"' >> /home/vagrant/.bashrc
sudo chmod 777 /etc/rancher/k3s/k3s.yaml
source /home/vagrant/.bashrc
echo "K3s installed"
