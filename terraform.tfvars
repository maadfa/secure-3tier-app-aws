variable "region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}
