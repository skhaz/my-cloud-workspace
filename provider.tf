terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
    }
  }
}

provider "vultr" {
  api_key = var.VULTR_APIKEY
}

variable "VULTR_APIKEY" {}
