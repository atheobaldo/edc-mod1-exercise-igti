provider "aws" {
  region = var.aws_region
}


# Centralizar o arquivo de controle de estado do terraform
# Criar bucket manualmente na AWS
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-theobaldo"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}