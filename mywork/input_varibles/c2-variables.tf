variable "aws_region" {
    description = "Region in which AWS Resousces to be created "
    type = string
    default = "ap-south-1"
  
}

variable "instancetype" {
    description = "Type of EC2-instance"
    type= string
    default = "t2.micro"
  
}

variable "ec2_keypair" {
    description = "name of the keypair"
    type = string
    default = "terraform"
}

variable "instance-type-list" {
    description = "value"
    type = list(string)
    default = [ "t2.micro","t2.nano" ]

}

variable "instance_type_map" {
    description = "instance_type-map"
    type = map(string)
    default = {
      "dev" = "t2.micro"
      "qa"  = "t2.nano"
      "prod" = "t2.small"
    }
}