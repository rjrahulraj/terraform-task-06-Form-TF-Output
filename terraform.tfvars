
aws_region            = "eu-west-1"
resource_prefix       = "cmtr-n9nbj5cz-01"
vpc_cidr              = "10.10.0.0/16"
internet_gateway_name = "cmtr-n9nbj5cz-01-igw"
route_table_name      = "cmtr-n9nbj5cz-01-rt"

public_subnets = {
  public_a = {
    name              = "cmtr-n9nbj5cz-01-subnet-public-a"
    cidr_block        = "10.10.1.0/24"
    availability_zone = "eu-west-1a"
  }

  public_b = {
    name              = "cmtr-n9nbj5cz-01-subnet-public-b"
    cidr_block        = "10.10.3.0/24"
    availability_zone = "eu-west-1b"
  }

  public_c = {
    name              = "cmtr-n9nbj5cz-01-subnet-public-c"
    cidr_block        = "10.10.5.0/24"
    availability_zone = "eu-west-1c"
  }
}
