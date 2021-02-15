variable "UserName" {
  description = "Email prefix for associated Identity"
}

variable "AssumedRole" {
  description = "Associated IAM role for user"
}

variable "SubnetId" {
  description = "Public deployment subnet in Cloud9 deployment VPC"
}

variable "ENV" {
  default = "PROD"
}

variable "SpecialUserName" {
  default = "false"
}


variable "SpecialEmail" {
  default = " "
}