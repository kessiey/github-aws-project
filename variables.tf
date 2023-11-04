variable "region" {
  description = "AWS Region where resources will be created"
  type        = string
  default     = "us-east-2"
}

variable "ami" {
  description = "AMI to use for the instance"
  default     = "ami-0e83be366243f524a"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC Cidr Block"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC to create"
  default     = "projectVPC"
}

variable "pri-sub-cidr" {
  description = "Private Subnet cidr block"
  default     = "10.0.1.0/24"
}

variable "pri-sn-name" {
  description = "Private subnet name for sn"
  default     = "pri-sn"
}

variable "pub-sub-cidr" {
  description = "Public subnet cidr block"
  default     = "10.0.2.0/24"
}

variable "pub-sn-name" {
  description = "Public subnet name for sn"
  default     = "pub-sn"
}

variable "vpc_id" {
  description = "ID of the VPC for the route table"
  type        = string
}
