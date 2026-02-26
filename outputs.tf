output "vpc_id" {
    value = aws_vpc.main.id
}   

output "igw" {
    value = aws_internet_gateway.main.id  
}