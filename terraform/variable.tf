variable "aws_region" {
  default = "ap-northeast-1"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "az_a" {
  default = "ap-northeast-1a"
}

variable "instances" {
  default = {
    subnets = {
      subnet1 = {
        name              = "stg-dig-subnet1"
        availability_zone = "ap-northeast-1a"
        cidr              = "172.31.48.0/20"
      }
      subnet2 = {
        name              = "stg-dig-subnet2"
        availability_zone = "ap-northeast-1c"
        cidr              = "172.31.64.0/20"
      }
    }
  }
}

variable "key" {
  default = ""
}
