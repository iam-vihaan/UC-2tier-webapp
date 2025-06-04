
variable "region" {
  description = "The AWS region to deploy resources"
  default = "us-esat-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  description = "CIDR blocks for the public subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  description = "CIDR blocks for the private subnets"
  type = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for the subnets"
  type = list(string)
  default = ["us-west-2a", "us-west-2b"]
}

variable "ami_id" {
  description = "AMI ID for the web server instances"
  default = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "Instance type for the web server instances"
  default = "t2.micro"
}

variable "db_name" {
  description = "Database name"
  default = "mydb"
}

variable "db_username" {
  description = "Database username"
  default = "admin"
}

variable "db_password" {
  description = "Database password"
  default = "password"
}

variable "s3_bucket" {
  description = "S3 bucket for remote state"
}

variable "dynamodb_table" {
  description = "DynamoDB table for state locking"
}
