# do-terraform
Automatic provisioning by Terraform on Digital Ocean

## install Go
```
sudo snap install go --classic
echo 'export GOPATH=$HOME' >> .bashrc
```
## install Docker
```
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
```
## install Fusion
```
cd
mkdir psn
cd psn
mkdir -p data/keystore
touch password.txt
docker run --restart on-failure --name psn -d -v /home/bert/psn:/fusion-node fusionnetwork/efsn -u '0x497BEB88eBF474E9f25259036f7C641c0eFdf091' -e bert0x
```
