output "web_server_ip" {
  description = "The public IP address of the web server"
  value       = aws_instance.web_server.public_ip
}

output "rds_endpoint" {
  description = "The endpoint of the RDS database"
  value       = aws_db_instance.default.endpoint
}

output "load_balancer_dns" {
  value = aws_lb.app_lb.dns_name
}

output "route53_domain" {
  value = var.domain_name
}
