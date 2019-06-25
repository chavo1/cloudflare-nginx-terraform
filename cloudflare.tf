# Configure the Cloudflare provider
provider "cloudflare" {
  email = "${var.email}"
  token = "${var.token}"
}
# Create a record
resource "cloudflare_record" "www" {
  domain  = "${var.domain}"
  name    = "${var.name}"
  value   = "${aws_instance.ec2.public_ip}"
  type    = "A"
  proxied = true
}
