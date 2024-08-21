
variable "ami" {
    description = "The Amazon Machine Image that the instance will use"
    default = ""
  
}

variable "instance-type" {
    description = "The instance-type of the instance"
    default = ""
  
}

variable "vpc-security-group-id" {
    description = "The SG id that will be used by the instance"
    default = ""
  
}

variable "keypaire_name" {
    description = "The key pair that will be used by the instance"
    default = ""
  
}

variable "volume_size" {
    description = "The volume in Gib of the ebs root volume that will be used by the instance"
    default = "8"
  
}

variable "volume_type" {
    description = "The volume type of the ebs root volume that will be used by the instance"
    default = "gp2"
  
}

variable "instance_name" {
    description = "The Name of the instance in AWS"
    default = ""
  
}

/*
variable "environment" {
    description = "The Environment where the instance is created"
    default = ""
  
}
*/

variable "team" {
    description = "The Team to who the instance belong to"
    default = ""
  
}



