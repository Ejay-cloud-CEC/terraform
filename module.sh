variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "env" { default = "dev" }

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = { Name = "${var.env}-vpc" }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = { Name = "${var.env}-public-subnet" }
}
