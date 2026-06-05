module "my_vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  env = "cebu"
}
