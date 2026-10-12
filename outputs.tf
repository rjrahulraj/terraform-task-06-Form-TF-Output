output "vpc_id" {
  description = "The ID of the created VPC."
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "IPv4 CIDR block of the created VPC."
  value       = aws_vpc.this.cidr_block
}


output "internet_gateway_id" {
  description = "The ID of the created Internet Gateway."
  value       = aws_internet_gateway.this.id
}

output "public_subnet_ids" {
  description = "List of IDs for the created public subnets."
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "public_subnet_cidr_block" {
  description = "CIDR blocks of all created public subnets."
  value       = [for subnet in aws_subnet.public : subnet.cidr_block]
}

output "public_subnet_availability_zone" {
  description = "Availability Zones of all created public subnets."
  value       = [for subnet in aws_subnet.public : subnet.availability_zone]
}

output "routing_table_id" {
  description = "ID of the public route table."
  value       = aws_route_table.public.id
}