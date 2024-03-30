variable "AWS_ACCESS_KEY" {
	default = "AKIA23DKME3MZ3VOHR5G"
}

variable "AWS_SECRET_KEY" {
	default = "HPyHrp6n0O8fm1ZtCR+gNLY7lBVYAoInSc676F29"
}

variable "mykey" {
	type = string
	default = "radicaldec2023"
	
}

variable "keyPath" {
   default = "aws.pem"
}

variable "subnet" {
	default = "us-west-2b"
}

variable "subnets" {
	type = map(string)
	default = {
		us-west-2a = "subnet-099e7de53fcebf8da"
        us-west-2b = "subnet-0a8c1504f09e1828f"
        us-west-2c = "subnet-04518523cc7b9dcf9"
        us-west-2d = "subnet-01095ab50bf229d74"
	}
}


variable "AWS_REGION" {
  default = "us-west-2"
}

variable "security-group" {
	type = map(list(string))
	default = {
		"mysg" = ["sg-0469f3af6e8d9926a"]
		
	}
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


