variable "env" {
  description = "This is the environment for infra"
  type = string
}

variable "instance_count" {
  description = "This is the no of ec2 instance"
  type = number
}

variable "instance_type" {
  description = "This is the instance type for infra"
  type = string
}

variable "ec2_ami_id" {
  description = "This is the ami_id for infra"
  type = string
}
