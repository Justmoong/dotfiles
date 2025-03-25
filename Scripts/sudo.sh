sudo -v

echo "ymy ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
sudo -k
sudo whoami