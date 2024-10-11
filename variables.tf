variable "aws-region" {
  default = "ap-south-1"
}

variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

variable "sub1-cidr" {
  default = "10.0.0.0/24"
}

variable "sub2-cidr" {
  default = "10.0.1.0/24"
}

variable "rt-cidr" {
  default = "0.0.0.0/0"
}

variable "inst-ami" {
  default = "ami-0dee22c13ea7a9a67"
}

variable "inst-type" {
  default = "t2.micro"
}
