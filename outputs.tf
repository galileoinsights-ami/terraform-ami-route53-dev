output "dev_domain_hosted_zone_id" {
  value = "${aws_route53_zone.dev_domain.zone_id}"
}

output "dev_domain_delegation_set_nameservers" {
  value = "${aws_route53_zone.dev_domain.name_servers}"
}