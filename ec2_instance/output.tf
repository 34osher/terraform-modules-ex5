output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = aws_instance.example.*.public_ip

}
