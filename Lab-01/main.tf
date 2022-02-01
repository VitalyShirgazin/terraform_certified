#----------------------------------------------------------
#  Terraform - From Zero to Certified Professional
#
# Build EC2 Instances
#
# Made by Denis Astahov
#----------------------------------------------------------

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "my_ubuntu" {
  ami           = "ami-04505e74c0741db8d" # This is Comments
  instance_type = "t2.micro"              // This is also Comments
  key_name      = "terraform"
  vpc_security_group_ids = ["sg-0ededf0e0c6275d0a"]
  tags = {
    Name    = "My-UbuntuLinux-Server"
    Owner   = "Denis Astahov"
    project = "Kukish"
  }
}

resource "aws_instance" "my_amazon" {
  ami           = "ami-083602cee93914c0c" // This is Comments
  instance_type = "t2.micro"              # This is also Comments
  key_name      = "terraform"
  vpc_security_group_ids = ["sg-0ededf0e0c6275d0a"]
  tags = {
    Name  = "My-AmazonLinux-Server"
    Owner = "Denis Astahov"
  }
}
