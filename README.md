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
## install Parity
```
bash <(curl https://get.parity.io -L)
```
## install pchain
```
cd
wget https://s3.us-east-2.amazonaws.com/download.pchain.org/pchain_init_dirs.zip
unzip pchain_init_dirs.zip
mv pchain_init_dirs/pchain .
rmdir pchain_init_dirs/
cd pchain/
chmod +x bin/pchain
./bin/pchain -datadir .pchain init .pchain/pchain/eth_genesis.json
chmod +x run_pchain.sh
nohup ./run_pchain.sh
tail -f log/pchain.log
```
