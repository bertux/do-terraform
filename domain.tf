# Create a new domain
resource "digitalocean_domain" "systems" {
  name       = "rsk.systems"
  ip_address = "${digitalocean_droplet.fusion.ipv4_address}"
}
output "domain" {
  value = "${digitalocean_domain.systems.id}"
}
