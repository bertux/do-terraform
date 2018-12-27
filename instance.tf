# Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "test-bert"
  region = "blr1"
  size   = "s-1vcpu-1gb"
}
