variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner"

  type = object ({
    name  = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631"
  }
}

variable "environment" {
  description = "Development Environment"

  type = object ({
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "alb_min_size" {
  description = "Minimum number of instances in the ASG"

  default = 1
}

variable "alb_max_size" {
  description = "Maximum number of instances in the ASG"

  default = 2
}