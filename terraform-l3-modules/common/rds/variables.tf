variable "orgname" {
  description = "The identifier of the resource"
  default = "neworg"
}

variable "environ" {
  description = "The identifier of the resource"
  default = "uat"
}

variable "identifier" {
  description = "The identifier of the resource"
  default = "neworg-uat"
}

variable "create" {
  description = "Whether to create this resource or not?"
  default     = true
}

variable "create_db_instance" {
  description = "Whether to create a database instance"
  default     = true
}

variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  default = "10"
}

variable "engine" {
  description = "The database engine to use"
  default = "postgres"
}

variable "engine_version" {
  description = "The engine version to use"
  default = "10.3"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  default = "db.t2.micro"
}

variable "username" {
  description = "Username for the master DB user"
  default = "neworg"
}

variable "password" {
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
  default = "neworgpassword123QW!$"
}

variable "port" {
  description = "The port on which the DB accepts connections"
  default = "5432"
}

variable "create_db_subnet_group" {
  description = "Whether to create a database subnet group"
  default     = false
}

variable "db_subnet_group_name" {
  description = "Name of DB subnet group. DB instance will be created in the VPC associated with the DB subnet group. If unspecified, will be created in the default VPC"
  default     = ""
}

variable "subnet_ids" {
  type        = "list"
  description = "A list of VPC subnet IDs"
  default     = []
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "publicly_accessible" {
  description = "Bool to control if instance is publicly accessible"
  default     = false
}

variable "allow_major_version_upgrade" {
  description = "Indicates that major version upgrades are allowed. Changing this parameter does not result in an outage and the change is asynchronously applied as soon as possible"
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = false
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = true
}

variable "backup_retention_period" {
  description = "The days to retain backups for"
  default     = 3
}

variable "tags" {
  description = "AMI ID for your App & bastion host"
  default = {
    ID          = "demo"
    Creator       = "vivek"
    Environment   = "uat"
  }
}

variable "enable_create_db_subnet_group" {
  default     = true
}

variable "final_snapshot_identifier" {
  description = "The name of your final DB snapshot when this DB instance is deleted."
  default     = false
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created."
  default     = true
}

