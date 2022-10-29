terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
    }
  }
}

provider "vultr" {
  api_key = var.VULTR_API_KEY
}

variable "VULTR_API_KEY" {}