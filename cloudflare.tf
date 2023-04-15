provider "cloudflare" {
  # email pulled from $CLOUDFLARE_EMAIL
  # token pulled from $CLOUDFLARE_TOKEN
}

variable "cloudflare_zone_id" {
  default = "30e16b80bc0d9ec8893777d37ee00b4b"
}

resource "cloudflare_record" "www" {
  zone_id         = var.cloudflare_zone_id
  name            = "azurerm_linux_virtual_machine.my_terraform_vm.computer_name"
  value           = "azurerm_linux_virtual_machine.my_terraform_vm.public_ip_address"
  type            = "A"
  ttl             = 3600
  proxied         = false
  allow_overwrite = true
}
