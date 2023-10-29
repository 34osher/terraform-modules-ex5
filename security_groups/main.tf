resource "aws_security_group" "example" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id
  tags = {
    Name = var.sg_tag_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "inbound" {
  count             = length(var.inbound_rules)
  security_group_id = aws_security_group.example.id
  from_port         = var.inbound_rules[count.index].from_port
  to_port           = var.inbound_rules[count.index].to_port
  ip_protocol       = var.inbound_rules[count.index].ip_protocol
  cidr_ipv4         = var.inbound_rules[count.index].cidr_ipv4
}

resource "aws_vpc_security_group_egress_rule" "outbound" {
  security_group_id = aws_security_group.example.id
  from_port         = 0
  to_port           = 65535
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}
