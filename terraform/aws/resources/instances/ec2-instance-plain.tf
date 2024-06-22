resource "aws_instance" "testvm" {
  ami           = "ami-0a283ac1aafe112d5" # last parameter is the default value
  //ami           = lookup(var.AMIS, var.AWS_REGION, "") # last parameter is the default value
  instance_type = "t2.micro"
  key_name      = var.mykey
  vpc_security_group_ids = ["sg-023ad60d422521051"]
  subnet_id = "subnet-060abf5f641446c3e"
  //subnet_id = lookup(var.subnets, var.subnet, "")
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name   = "terraform-created-vm"
  }

}
