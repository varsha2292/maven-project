variable "AWS_ACCESS_KEY" {
	default = "AKIAZI2LCO2TWPNXUHX7"
}

variable "AWS_SECRET_KEY" {
	default = "p61Rr4WRyqQzKuyxjQe4PZWw51JS4TuislI49HEy"
}

variable "mykey" {
	type = string
	default = "radical-2024-terraform"
	
}

variable "keyPath" {
   default = "aws.pem"
}

variable "subnet" {
	default = "us-west-2c"
}

variable "subnets" {
	type = map(string)
	default = {
		us-west-2a = "subnet-099e7de53fcebf8da"
        us-west-2b = "subnet-0a8c1504f09e1828f"
        us-west-2c = "subnet-060abf5f641446c3e"
        us-west-2d = "subnet-01095ab50bf229d74"
	}
}


variable "AWS_REGION" {
  default = "us-west-2"
}

variable "security-group" {
	type = map(list(string))
	default = {
		"mysg" = ["sg-023ad60d422521051"]
		
	}
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-0a283ac1aafe112d5"
    eu-west-1 = "ami-0d729a60"
	us-east-2 = "ami-0fa49cc9dc8d62c84"
  }

}


