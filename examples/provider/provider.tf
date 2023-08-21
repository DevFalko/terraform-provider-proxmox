terraform {
  required_providers {
    datadog = {
      source = "bpg/proxmox"
    }
  }
}

provider "proxmox" {
  endpoint = var.virtual_environment_endpoint
  username = var.virtual_environment_username
  password = var.virtual_environment_password
  insecure = true
  ssh {
    agent = true
    port = 22 # SSH default port
  }
}
