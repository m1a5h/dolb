terraform {
	required_providers {
		digitalocean  = {
			version = "~> 2.0"
			source = "digitalocean/digitalocean"
		}
	}
}

variable "do_token" {}
variable "pvt_key" {}

provider "digitalocean" {
	token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
	name = "m137pick SSH Key"
}
