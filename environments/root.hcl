# Define AWS provider configuration for all environments
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" {
  region              = "eu-west-1"
  version             = "=6.34.0"
}
EOF
}

# Define Terraform backend configuration to use HCP Terraform

remote_state {
  backend = "remote"
  config = {
    hostname = "app.terraform.io"
    organization = "deep-dive-JC"
    workspaces = {
      name = 
    }
  }
}