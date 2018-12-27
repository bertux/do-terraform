# Create a new SSH key
resource "digitalocean_ssh_key" "pchain" {
  name       = "Test Pchain"
  public_key = "${file("~/.ssh/pchain.pub")}"
}
