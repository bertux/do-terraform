# Create a new SSH key
resource "digitalocean_ssh_key" "tfhome" {
  name       = "Test Terraform"
  public_key = "${file("~/.ssh/tfhome.pub")}"
}
