
variable "aws_region" {
  description = "AWS Region where the network infrastructure will be created."
  type        = string
}

variable "resource_prefix" {
  description = "Prefix used to generate names for network resources."
  type        = string
}

variable "vpc_cidr" {
  description = "IPv4 CIDR block assigned to the VPC."
  type        = string
}

variable "internet_gateway_name" {
  description = "Name tag for the Internet Gateway."
  type        = string
}

variable "route_table_name" {
  description = "Name tag for the public route table."
  type        = string
}

variable "public_subnets" {
  description = "Map of public subnet configurations, including names, CIDR blocks, and Availability Zones."
  type = map(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))
}
