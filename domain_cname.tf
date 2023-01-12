resource "digitalocean_record" "CNAME-www" {
	domain = digitalocean_domain.default.name
	type = "CNAME"
	name = "www"
	value = "@"
}
