variable "AWS_ACCESS_KEY" {
	default = "AKIA23DKME3MZ3VOHR5G"
}

variable "AWS_SECRET_KEY" {
	default = "HPyHrp6n0O8fm1ZtCR+gNLY7lBVYAoInSc676F29"
}

variable "vpc_cidr" {
	description = "CIDR for radical VPC"
	default     = "10.0.0.0/16"
}

variable "public_subnet_1" {
	description = "CIDR for radical public subnet"
	default     = "10.0.1.0/24"
}

variable "public_subnet_2" {
	description = "CIDR for radical private subnet"
	default     = "10.0.2.0/24"
}

variable "public_subnet_3" {
	description = "CIDR for radical public subnet"
	default     = "10.0.3.0/24"
}

variable "public_subnet_4" {
	description = "CIDR for radical public subnet"
	default     = "10.0.4.0/24"
}

variable "mykey" {
	type = string
	default = "radicaldec2023"
}

variable "keyPath" {
   default = "aws.pem"
}

variable "subnet_public-1" {
	default = "us-west-2a"
}

variable "subnet_public-2" {
	default = "us-west-2b"
}

variable "subnet_public-3" {
	default = "us-west-2c"
}

variable "subnet_public-4" {
	default = "us-west-2d"
}


variable "AWS_REGION" {
  default = "us-west-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-00112c992a47ba871"
    eu-west-1 = "ami-0d729a60"
	us-east-2 = "ami-0fa49cc9dc8d62c84"
  }

}


