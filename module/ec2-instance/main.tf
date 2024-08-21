
resource "aws_instance" "ec2-Instance" {
  ami                    = var.ami
  instance_type          = var.instance-type
  vpc_security_group_ids = var.vpc-security-group-id
  key_name               = var.keypaire_name
  
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }

  tags = {
    Name = "${var.instance_name}${terraform.workspace}"
    Team = var.team
  }

}