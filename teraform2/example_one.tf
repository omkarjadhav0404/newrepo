#i need  ubuntu server using terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"

}


resource "aws_instance" "my_instance" {
    ami ="ami-0ba259e664698cbfc"
    instance_type = "t2.micro"
    key_name = "windows_global_key"
}
