# ./module/network/outputs.tf

output "vpc_id" {
  value = aws_vpc.main[0].id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}
