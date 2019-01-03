# Create a new Web Droplet in the ams3 region
resource "digitalocean_droplet" "droplet" {
  image  = "ubuntu-18-04-x64"
  name   = "bert-test"
  region = "ams3"
  size   = "s-2vcpu-4gb"
  ssh_keys = ["${digitalocean_ssh_key.tfhome.fingerprint}"]
}
output "ip" {
  value = "${digitalocean_droplet.droplet.ipv4_address}"
}
# Create a new Web Droplet in the ams3 region
resource "digitalocean_droplet" "pchain" {
  image  = "ubuntu-18-04-x64"
  name   = "bert-pchain"
  region = "ams3"
  size   = "s-2vcpu-4gb"
  ssh_keys = ["${digitalocean_ssh_key.pchain.fingerprint}"]
  user_data = "${file("pchain.cloudinit")}"
}
output "ip_pchain" {
  value = "${digitalocean_droplet.pchain.ipv4_address}"
}
