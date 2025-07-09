variable "instance_type" {
  type = string
}
variable "ami_id" {
  type = string
}
variable "key_name" {
  type = string
}
variable "name" {
  type = string
}
variable "environment" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "public_subnet_cidrs" {
  type = list(string)
}
variable "azs" {
  type = list(string)
}