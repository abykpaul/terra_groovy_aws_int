variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_id" {}
variable "key_name" {}
variable "name" {}
variable "environment" {}
variable "env" {
  description = "Environment name (dev/prod)"
  type        = string
}
