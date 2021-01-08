output "public_subnet_id" {
  value = aws_subnet.public-1.id
}
output "public_subnet_id2" {
  value = aws_subnet.public-2.id
}
output "public_subnet_id3" {
  value = aws_subnet.public-3.id
}
output "private_subnet_id" {
  value = aws_subnet.private-1.id
}
output "private_subnet_id2" {
  value = aws_subnet.private-2.id
}
output "private_subnet_id3" {
  value = aws_subnet.private-3.id
}
output "vpc_id" {
  value = aws_vpc.main.id
}