variable "region" {
  description = "AWS region to deploy resources in"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}
