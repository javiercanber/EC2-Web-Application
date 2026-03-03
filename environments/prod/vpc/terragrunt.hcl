include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../modules/network"
}

inputs = {
  vpc_name        = "prod-vpc"
  vpc_cidr        = "10.2.0.0/16"
  vpc_azs         = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.2.1.0/24", "10.2.2.0/24", "10.2.3.0/24"]
  public_subnets  = ["10.2.10.0/24", "10.2.11.0/24", "10.2.12.0/24"]
}