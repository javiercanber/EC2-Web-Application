# Define AWS provider configuration for all environments
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "aws" {
  region              = "eu-west-1"
  version             = "=6.34.0"
}
EOF
}

# Define Terraform backend configuration to use HCP Terraform

remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket  = "tf-state-bucket-septa"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = true
    #dynamodb_table = "terraform-locks"
    use_lockfile = true
  }
}