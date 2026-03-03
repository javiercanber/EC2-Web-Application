variable "vpc_name" {
  type = string
  description = "VPC name"
}

variable "vpc_cidr" {
  type = string
  description = "VPC CIDR block"
}

variable "vpc_azs" {
  type = list(string)
  description = "List of availability zones"
}

variable "private_subnets" {
  type = list(string)
  description = "List of private subnet CIDR blocks"
}

variable "public_subnets" {
  type = list(string)
  description = "List of public subnet CIDR blocks"
}