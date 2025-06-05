resource "aws_db_subnet_group" "rds" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = var.tags
}

resource "aws_db_instance" "mysql" {
  identifier             = "demo-webapp-rds"
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  publicly_accessible    = false
  db_subnet_group_name   = aws_db_subnet_group.rds.name
  vpc_security_group_ids = var.vpc_security_group_ids
  # Required for read replica creation
  backup_retention_period   = 7
  skip_final_snapshot       = false
  final_snapshot_identifier = "db-snap"
  multi_az                  = false
  availability_zone         = "us-east-1b" # Specify AZ
  maintenance_window        = "Mon:00:00-Mon:03:00"
  backup_window             = "03:00-06:00"
  tags = var.tags
}
