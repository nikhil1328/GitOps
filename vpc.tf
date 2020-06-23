### Sunday May 24 2020 23:10 IST 
## Purpose ## Terraform template to launch VPC service in AWS Cloud ##
## Created by Nikhil Kulkarni ###

#########################################################################################################################


provider "aws" {
  version = "~> 2.0"
#  access_key = access_key  # If you have already configured AWS-CLI then this is not required.
#  secret_key = secret_key  # If you have already configured AWS-CLI then this is not required.
  region  = "ap-south-1"   # Mention the region in which you want to create a VPC.

}

# create the VPC
resource "aws_vpc" "Terraform_VPC" {      # You can replace "Terraform_VPC" as per you choice.
  cidr_block           = "10.10.0.0/16"   # Provide the CIDR block of your choice.
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "Terraform VPC"
  }
} # end resourc


# create the Subnet. You can change the subnet name, CIDR, AZ, Tags etc as per your requirement.
resource "aws_subnet" "Terraform_Subnet" {
  vpc_id                  = aws_vpc.Terraform_VPC.id
  cidr_block              = "10.10.10.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-south-1a"
tags = {
   Name = "Terraform Subnet"
}
} # end resource
