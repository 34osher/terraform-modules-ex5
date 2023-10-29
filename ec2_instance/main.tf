# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids = [var.aws_sg]

  tags = {
    Name = var.tag_name
  }
  
  user_data = file("/home/osher/Desktop/git/Terraform/Ex4_modules/install_docker_weather.sh")

}

