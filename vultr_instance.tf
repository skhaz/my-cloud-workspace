locals {
  user_data = templatefile("cloud-init.yaml", {
    user = var.USER
    tskey = var.TAILSCALE_AUTHKEY
  })
}

resource "vultr_instance" "workstation" {
    #plan = "vc2-4c-8gb-sc1"
    plan = "vhp-8c-16gb-intel"
    #region = "sao"
    region = "sjc"
    os_id = "387"
    enable_ipv6 = true

    user_data = local.user_data
}

variable "USER" {}
variable "TAILSCALE_AUTHKEY" {}