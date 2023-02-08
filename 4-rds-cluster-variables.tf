# Security Group Variables

# Cluster Name
variable "cluster_name" {
  description = "Name of the RDS Cluster"
  default     = "MyDBCluster"
}

# DB Instance Class
variable "db_instance_class" {
  description = "DB Instance Class"
  default     = "db.t3.small"
}

#Mysql Aurora Engine
variable "mysql_aurora_engine" {
  description = "Mysql Aurora Engine"
  default     = "aurora-mysql"
}

# Mysql Aurora Db Engine Version
variable "mysql_aurora_db_engine_version" {
  description = "Mysql Aurora Db Engine Version"
  default     = "5.7.mysql_aurora.2.09.2"
}

# Mysql Aurora DB Cluster Access Port
variable "mysql_aurora_db_cluster_access_port" {
  description = "Mysql Aurora DB Cluster Access Port"
  default     = 3306
}

# Mysql Master Username
variable "master_username" {
    type = string
    description = "(optional) describe your variable"
}

# Mysql Master Password
variable "master_password" {
    type = string
    description = "(optional) describe your variable"
}