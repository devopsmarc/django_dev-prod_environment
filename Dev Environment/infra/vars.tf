variable "aws_region" {
  type = string
}

variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
  # default = "t2.micro"
}

variable "key_name" {
  type = string
  # default = "tf_aws_cli-key"
}