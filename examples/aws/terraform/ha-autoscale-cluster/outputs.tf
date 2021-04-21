output "internal_proxy" {
  value = aws_lb.proxy_acm[0].dns_name
}

output "teleport_internal_auth" {
  value = aws_lb.auth.dns_name
}

output "teleport_external_monitoring" {
  value = "https://${var.route53_domain}:8443"
}

output "teleport_external_endpoint" {
  value = "https://${var.route53_domain}"
}
