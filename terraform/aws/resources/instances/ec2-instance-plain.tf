resource "aws_instance" "testvm" {
  ami           = "ami-0edf386e462400a51" # last parameter is the default value
  //ami           = lookup(var.AMIS, var.AWS_REGION, "") # last parameter is the default value
  instance_type = "t2.micro"
  key_name      = var.mykey
  vpc_security_group_ids = ["sg-0404520d1e0c04254"]
  subnet_id = "subnet-071ce77852d94d5b6"
  //subnet_id = lookup(var.subnets, var.subnet, "")
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name   = "terraform-created-vm"
  }

}
