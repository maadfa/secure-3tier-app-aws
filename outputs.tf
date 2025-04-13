output "web_server_ip" {
  description = "The public IP address of the web server"
  value       = aws_instance.web_server.public_ip
}

output "rds_endpoint" {
  description = "The endpoint of the RDS database"
  value       = aws_db_instance.default.endpoint
}
