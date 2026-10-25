output "ec2_public_ip" {
  description = "Địa chỉ IP Public của máy chủ EC2"
  value       = aws_instance.lab3_ec2.public_ip
}

output "s3_bucket_name" {
  description = "Tên S3 Bucket đã tạo"
  value       = aws_s3_bucket.lab3_bucket.id
}
