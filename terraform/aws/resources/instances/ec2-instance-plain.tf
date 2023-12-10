resource "aws_instance" "testvm" {
  ami           = "ami-093467ec28ae4fe03" # last parameter is the default value
  //ami           = lookup(var.AMIS, var.AWS_REGION, "") # last parameter is the default value
  instance_type = "t2.micro"
  key_name      = var.mykey
  vpc_security_group_ids = ["sg-0342ba743b97deee2"]
  subnet_id = "subnet-0656b8e19940c8b8f"
  //subnet_id = lookup(var.subnets, var.subnet, "")
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name   = "terraform-created-vm"
  }

}
