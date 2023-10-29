variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "example-terraform1"
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
  default     = "SecurityG Terraform1"
}

variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
  default     = "vpc-0760016f3ec68a0b5"
}

variable "sg_tag_name" {
  description = "Tag name for the security group"
  type        = string
  default     = "terraform_sg1"
}

variable "inbound_rules" {
  description = "List of inbound security group rules"
  type = list(object({
    from_port  = string
    to_port    = string
    ip_protocol   = string
    cidr_ipv4 = string
  }))
}
