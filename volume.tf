resource "digitalocean_volume" "volume" {
  region                  = "ams3"
  name                    = "bert-test"
  size                    = 200
  initial_filesystem_type = "ext4"
  description             = "data volume"
}
resource "digitalocean_volume_attachment" "data" {
  droplet_id = "${digitalocean_droplet.droplet.id}"
  volume_id  = "${digitalocean_volume.volume.id}"
}
