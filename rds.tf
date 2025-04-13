

# Security Group for RDS (Allow MySQL access from the Application Tier)
resource "aws_security_group" "db_sg" {
  name_prefix = "db_sg"
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [aws_security_group.app_sg.id]
  }
}

# DB Subnet Group (For RDS in private subnet)
resource "aws_db_subnet_group" "main" {
  name       = "main-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet.id]

  tags = {
    Name = "main-db-subnet-group"
  }
}

# MySQL RDS Instance for Database Tier
resource "aws_db_instance" "database" {
  allocated_storage    = 20
  db_instance_class    = "db.t2.micro"
  engine               = "mysql"
  engine_version       = "8.0"
  db_name              = "mydatabase"
  username             = "admin"
  password             = "password"
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name = aws_db_subnet_group.main.id
  publicly_accessible  = false
  multi_az             = false
  backup_retention_period = 7

  tags = {
    Name = "MySQLDatabase"
  }
}
