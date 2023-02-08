module "aurora-mysql-cluster" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "7.6.2"
  # insert the 1 required variable here

  name                      = var.cluster_name
  engine                    = var.mysql_aurora_engine
  engine_version            = var.mysql_aurora_db_engine_version
  db_cluster_instance_class = var.db_instance_class

  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  subnets = data.terraform_remote_state.vpc.outputs.public_subnets

  allowed_security_groups = data.terraform_remote_state.sg.outputs.app_services_sg_id

  allowed_cidr_blocks = ["0.0.0.0/0"]

  storage_encrypted = false

  master_username = var.master_username
  master_password = var.master_password

  network_type = "ipv4"

  port = var.mysql_aurora_db_cluster_access_port



}