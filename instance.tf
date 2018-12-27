# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "pchain" {
  image  = "ubuntu-16-04-x64"
  name   = "bert-pchain"
  region = "blr1"
  size   = "s-4vcpu-8gb"
  ssh_keys = ["${digitalocean_ssh_key.pchain.fingerprint}"]
}
output "ip" {
  value = "${digitalocean_droplet.pchain.ipv4_address}"
}
