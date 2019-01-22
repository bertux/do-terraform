# Create a new domain
resource "digitalocean_domain" "systems" {
  name       = "rsk.systems"
  ip_address = "${digitalocean_droplet.droplet.ipv4_address}"
}
output "domain" {
  value = "${digitalocean_domain.systems.id}"
}
# Create a new domain
resource "digitalocean_domain" "pchain" {
  name       = "pchain.rsk.systems"
  ip_address = "${digitalocean_floating_ip.pchain.id}"
}
output "domain_pchain" {
  value = "${digitalocean_domain.pchain.id}"
}
