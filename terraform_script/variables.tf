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
variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1a"]
}
variable "ubuntuami" {
  default = "ami-0729e439b6769d6ab"
}
variable "key_name" {
  default = "MasterKey"
}
