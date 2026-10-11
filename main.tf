resource "oci_kms_verify" "kms_verifies" {
  for_each = var.kms_verifies

  crypto_endpoint   = each.value.crypto_endpoint
  key_id            = each.value.key_id
  key_version_id    = each.value.key_version_id
  message           = each.value.message
  signature         = each.value.signature
  signing_algorithm = each.value.signing_algorithm
  message_type      = each.value.message_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

