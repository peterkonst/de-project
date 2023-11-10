resource "aws_secretsmanager_secret" "totesys_db_creds" {
  name = "totesys_database_creds"
  force_overwrite_replica_secret = true
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "totesys_db_creds" {
  secret_id = aws_secretsmanager_secret.totesys_db_creds.id
  secret_string = jsonencode(var.totesys_db_creds)
}

resource "aws_secretsmanager_secret" "data_warehouse_creds" {
  name = "data_warehouse_creds"
  force_overwrite_replica_secret = true
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "data_warehouse_creds" {
  secret_id = aws_secretsmanager_secret.data_warehouse_creds.id
  secret_string = jsonencode(var.data_warehouse_creds)
}

resource "aws_secretsmanager_secret" "test_totesys_db_creds" {
  name = "test_totesys_db_creds"
  force_overwrite_replica_secret = true
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "test_totesys_db_creds" {
  secret_id = aws_secretsmanager_secret.test_totesys_db_creds.id
  secret_string = jsonencode(var.test_totesys_db_creds)
}

resource "aws_secretsmanager_secret" "test_dw_creds" {
  name = "test_dw_creds"
  force_overwrite_replica_secret = true
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "test_dw_creds" {
  secret_id = aws_secretsmanager_secret.test_dw_creds.id
  secret_string = jsonencode(var.test_dw_creds)
}