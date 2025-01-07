sudo apt update -y
sudo apt install -y net-tools
sudo ufw disable
export TKN=$(cat /vagrant/token)
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent --server https://192.168.56.110:6443 --node-ip 192.168.56.111 --token 12345" sh -s -
echo "Agent setup complete"
