output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_ids" {
  value = module.network.public_subnets_id
}

output "private_subnet_ids" {
  value = module.network.private_subnets_id
}

output "web_instance_ids" {
  value = module.ec2.instance_id
}

output "web_instance_ips" {
  value = module.ec2.public_ip
}

output "db_endpoint" {
  value = module.rds.db_endpoint
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}
