resource "aws_ssm_parameter" "github_app_client_id" {
  name  = "/actions_runner/${var.environment}/github_app_client_id"
  type  = "SecureString"
  value = var.github_app.client_id
}

resource "aws_ssm_parameter" "github_app_client_secret" {
  name  = "/actions_runner/${var.environment}/github_app_client_secret"
  type  = "SecureString"
  value = var.github_app.client_secret
}

resource "aws_ssm_parameter" "github_app_id" {
  name  = "/actions_runner/${var.environment}/github_app"
  type  = "SecureString"
  value = var.github_app.id
}

resource "aws_ssm_parameter" "github_app_key_base64" {
  name  = "/actions_runner/${var.environment}/github_app_key_base64"
  type  = "SecureString"
  value = var.github_app.key_base64
}
