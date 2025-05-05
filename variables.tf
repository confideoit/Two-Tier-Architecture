
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "public_subnet_az1" { default = "10.0.1.0/24" }
variable "public_subnet_az2" { default = "10.0.2.0/24" }
variable "private_subnet_az1" { default = "10.0.3.0/24" }
variable "private_subnet_az2" { default = "10.0.4.0/24" }

variable "availability_zones" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "instance_type" { default = "t2.micro" }
variable "db_username" { default = "admin" }
variable "db_password" { default = "YourPassword123!" }
