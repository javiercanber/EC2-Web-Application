include "root" {
  path = find_in_parent_folders("terragrunt.hcl")
}

terraform {
  source = "../../../modules/network"
}

inputs {
  name            = "staging-vpc"
  cidr            = "10.1.0.0/16"
  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
  public_subnets  = ["10.1.10.0/24", "10.1.11.0/24", "10.1.12.0/24"]
}