variable "aws_region" {
  description = "AWS Region triển khai hạ tầng"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Loại máy chủ ảo EC2"
  type        = string
  default     = "t2.micro"
}
