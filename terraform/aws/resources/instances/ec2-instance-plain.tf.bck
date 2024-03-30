resource "aws_instance" "testvm" {
  ami           = "ami-00112c992a47ba871" # last parameter is the default value
  //ami           = lookup(var.AMIS, var.AWS_REGION, "") # last parameter is the default value
  instance_type = "t2.micro"
  key_name      = var.mykey
  vpc_security_group_ids = ["sg-0469f3af6e8d9926a"]
  subnet_id = "subnet-099e7de53fcebf8da"
  //subnet_id = lookup(var.subnets, var.subnet, "")
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name   = "terraform-created-vm"
  }

}
