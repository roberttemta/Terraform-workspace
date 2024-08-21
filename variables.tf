
variable "region" {
  description = "The AWS region where the infrastructure will be created"

}

variable "ami" {
  description = "The Amazon Machine Image that the instance will use"

}

variable "instance-type" {
  description = "The instance-type of the instance"

}

variable "vpc-security-group-id" {
  description = "The SG id that will be used by the instance"

}

variable "keypaire_name" {
  description = "The key pair that will be used by the instance"

}

variable "volume_size" {
  description = "The volume in Gib of the ebs root volume that will be used by the instance"

}

variable "volume_type" {
  description = "The volume type of the ebs root volume that will be used by the instance"

}

variable "instance_name" {
  description = "The Name of the instance in AWS"

}


variable "team" {
  description = "The Team to who the instance belong to"

}


variable "bucket_name" {
  description = "The Bucket name of the S3"

}

