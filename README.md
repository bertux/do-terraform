# do-terraform
Automatic provisioning by Terraform on Digital Ocean

## install Go
```
sudo snap install go --classic
echo 'export GOPATH=$HOME' >> .bashrc
```
## install NodeJS
```
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
```
## install Docker
```
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```
## install Parity
```
bash <(curl https://get.parity.io -L)
```
## generate Pchain account and validator
```
pchain account new --keystore ~/.pchain/testnet/keystore
pchain gen_priv_validator 00fb76b12df1822bb8d8b07bbed235b0c0ce6175 --datadir ~/.pchain/testnet
```
