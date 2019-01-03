# Create a new SSH key for Terraform
resource "digitalocean_ssh_key" "tfhome" {
  name       = "Test Terraform"
  public_key = "${file("~/.ssh/tfhome.pub")}"
}
# Create a new SSH key for Pchain
resource "digitalocean_ssh_key" "pchain" {
  name       = "Test pchain"
  public_key = "${file("~/.ssh/pchain.pub")}"
}
