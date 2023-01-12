resource "digitalocean_droplet" "www-2" {
	image = "ubuntu-22-10-x64"
	name = "www-2"
	region = "lon1"
	size = "s-1vcpu-1gb"
	ssh_keys = [
		data.digitalocean_ssh_key.terraform.id
	]

	connection {
		host = self.ipv4_address
		user = "root"
		type = "ssh"
		private_key = file(var.pvt_key)
		timeout = "2m"
	}

	provisioner "remote-exec" {
		inline = [
			"export PATH=$PATH:/usr/bin",
			# install nginx
			"sudo apt update",
			"sudo apt install nginx -y"
		]
	}
}
