variable "subnet_group" {
  type        = string
  description = "Variavel utilizada para informar o grupo de subnet"
}

variable "senha_banco" {
  type        = string
  description = "Variavel utilizada para informar a senha do banco"
}

terraform {
  backend "s3" {
    bucket = "state-terraform-fiap"
    key    = "db"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}

resource "aws_db_instance" "banco" {
  identifier           = "fiap-db"
  allocated_storage    = 10
  db_name              = "fiap"
  engine               = "mariadb"
  engine_version       = "10.11"
  instance_class       = "db.t3.micro"
  username             = "fiap_user"
  password             = var.senha_banco
  skip_final_snapshot  = true
  db_subnet_group_name = var.subnet_group
  apply_immediately = true
}

resource "aws_db_instance" "banco_catalogo" {
  identifier           = "fiap-db-catalogo"
  allocated_storage    = 10
  db_name              = "fiap"
  engine               = "mariadb"
  engine_version       = "10.11"
  instance_class       = "db.t3.micro"
  username             = "fiap_user"
  password             = var.senha_banco
  skip_final_snapshot  = true
  db_subnet_group_name = var.subnet_group
  apply_immediately = true
}