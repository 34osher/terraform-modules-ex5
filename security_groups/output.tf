output "security_group_id" {
  description = "ID of the security group"
  value       = aws_vpc_security_group_ingress_rule.inbound[0].security_group_id
}