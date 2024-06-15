resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}
#["",""] -terraform
#" "," " - SSM parameter
resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.private_subnet_ids) #COnverting list to string list
}

#> join(", ", ["foo", "bar", "baz"])
# foo, bar, baz

# Type
# StringList
# Value
# subnet-08760300646517498,subnet-01f8dd13daa5d96d4

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/database_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.database_subnet_ids)
}

resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.project_name}/${var.environment}/db_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group_name
}