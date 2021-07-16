data "aws_kms_key" "cmk" {
  count  = var.kms_key_id != null ? 1 : 0
  key_id = var.kms_key_id
}
