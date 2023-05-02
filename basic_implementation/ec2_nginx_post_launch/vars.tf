variable "AWS_ACCESS_KEY" {
  
}
variable "AWS_SECRET_KEY" {
  
}
variable "AWS_REGION" {
    default = "eu-west-1"
}
variable "AMIS" {
    type = map(string)
    default = {
        us-east-1 = "ami-02396cdd13e9a1257"
        us-west-2 = "ami-009c5f630e96948cb"
        eu-west-1 = "ami-04f1014c8adcfa670"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "path_to_your_private_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "path_to_your_public_key"
}

variable "INSTANCE_USERNAME" {
  default = "ec2-user"
}