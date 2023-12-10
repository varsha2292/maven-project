variable "AWS_ACCESS_KEY" {
	default = "AKIA2RJEWVSXY23ANAFR"
}

variable "AWS_SECRET_KEY" {
	default = "nAPEfUyo53ty8jkNbsiYUuuMG8gCDCJd5HexHGFi"
}

variable "mykey" {
	type = string
	default = "radicalsep2023"
	
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
		    us-west-2a = "subnet-0656b8e19940c8b8f"
        us-west-2b = "subnet-0a5bad7d52c80e5f5"
        us-west-2c = "subnet-02d030a289271bbf6"
        us-west-2d = "subnet-0c1e3f389a79d2aa3"
	}
}


variable "AWS_REGION" {
  default = "us-west-2"
}

variable "security-group" {
	type = map(list(string))
	default = {
		"mysg" = ["sg-0342ba743b97deee2"]
		
	}
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-09100e341bda441c0"
    eu-west-1 = "ami-0d729a60"
	  us-east-2 = "ami-0fa49cc9dc8d62c84"
  }

}


