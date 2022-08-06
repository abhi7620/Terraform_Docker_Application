variable "aws_region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  default = "172.0.0.0/24"
}
variable "subnets_cidr" {
  type    = list(string)
  default = ["172.0.0.0/25", "172.0.0.128/25"]
}
variable "ubuntuami" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}
variable "redhat_servers" {
  default = "ami-0729e439b6769d6ab"
}
variable "key_name" {
  default = "MasterKey"
}