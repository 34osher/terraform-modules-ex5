variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-00983e8a26e4c9bd9" # Ubuntu 22.04 LTS AMI ID in eu-west-3
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro" # Choose an instance type
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "terraform_keys" # Replace with your SSH key pair name
  sensitive = true
}

variable "tag_name" {
  description = "Tag name of the instance"
  type        = string
  default     = "MyInstance_terraform" # Replace with your Tag name of the instance
  
}

variable "aws_sg" {
  description = "aws security group"
  type        = string
  default     = "sg-023b413eb525db278" # Replace with your Tag name of the instance
}
