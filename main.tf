
module "ec2" {
  source                = "./module/ec2-instance"
  ami                   = var.ami
  instance-type         = var.instance-type
  vpc-security-group-id = var.vpc-security-group-id
  keypaire_name         = var.keypaire_name

  volume_size = var.volume_size
  volume_type = var.volume_type


  instance_name = "${var.instance_name}${terraform.workspace}"
  team          = var.team

}


module "s3" {
  source      = "./module/S3"
  bucket_name = var.bucket_name
  team        = var.team
}

provider "aws" {
  region = var.region
}