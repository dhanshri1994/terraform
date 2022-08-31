output "private_ip" {
    value = aws_instance.test.private_ip  
}

output "instance_id" {
    value = aws_instance.test.id
}

output "arn" {
    value = aws_instance.test.arn
}