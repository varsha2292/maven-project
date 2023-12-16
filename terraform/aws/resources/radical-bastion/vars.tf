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

variable "subnet" {
	default = "us-west-2a"
}

variable "security-group" {
	type = map(list(string))
	default = {
		"mysg" = ["sg-0342ba743b97deee2"]
		
	}
}


variable "keyPath" {
   default = "aws.pem"
}

variable "subnets" {
	type = map(string)
	default = {
		us-east-1b = "subnet-063341b49a740071e"
		us-east-1a = "subnet-0f99e739329404012"
	}
}


variable "AWS_REGION" {
  default = "us-west-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-00c6177f250e07ec1"
    us-west-2 = "ami-09100e341bda441c0"
    eu-west-1 = "ami-0d729a60"
    us-east-2 = "ami-0fa49cc9dc8d62c84"
  }
}
