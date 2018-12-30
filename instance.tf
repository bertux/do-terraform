# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "fusion" {
  image  = "ubuntu-18-04-x64"
  name   = "bert-fusion"
  region = "fra1"
  size   = "s-4vcpu-8gb"
  ssh_keys = ["${digitalocean_ssh_key.tfhome.fingerprint}"]
}
output "ip" {
  value = "${digitalocean_droplet.fusion.ipv4_address}"
}
