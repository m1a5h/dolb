resource "digitalocean_domain" "default" {
	name = "smashing.mia"
	ip_address = digitalocean_loadbalancer.www-lb.ip
}
