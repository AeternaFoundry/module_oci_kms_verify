output "kms_verifies_id" {
  description = "Map of id values across all kms_verifies, keyed the same as var.kms_verifies except keys with no id are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_verifies_crypto_endpoint" {
  description = "Map of crypto_endpoint values across all kms_verifies, keyed the same as var.kms_verifies except keys with no crypto_endpoint are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.crypto_endpoint if v.crypto_endpoint != null && length(v.crypto_endpoint) > 0 }
}
output "kms_verifies_is_signature_valid" {
  description = "Map of is_signature_valid values across all kms_verifies, keyed the same as var.kms_verifies except keys with no is_signature_valid are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.is_signature_valid if v.is_signature_valid != null }
}
output "kms_verifies_key_id" {
  description = "Map of key_id values across all kms_verifies, keyed the same as var.kms_verifies except keys with no key_id are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "kms_verifies_key_version_id" {
  description = "Map of key_version_id values across all kms_verifies, keyed the same as var.kms_verifies except keys with no key_version_id are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.key_version_id if v.key_version_id != null && length(v.key_version_id) > 0 }
}
output "kms_verifies_message" {
  description = "Map of message values across all kms_verifies, keyed the same as var.kms_verifies except keys with no message are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.message if v.message != null && length(v.message) > 0 }
}
output "kms_verifies_message_type" {
  description = "Map of message_type values across all kms_verifies, keyed the same as var.kms_verifies except keys with no message_type are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.message_type if v.message_type != null && length(v.message_type) > 0 }
}
output "kms_verifies_signature" {
  description = "Map of signature values across all kms_verifies, keyed the same as var.kms_verifies except keys with no signature are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.signature if v.signature != null && length(v.signature) > 0 }
}
output "kms_verifies_signing_algorithm" {
  description = "Map of signing_algorithm values across all kms_verifies, keyed the same as var.kms_verifies except keys with no signing_algorithm are omitted"
  value       = { for k, v in oci_kms_verify.kms_verifies : k => v.signing_algorithm if v.signing_algorithm != null && length(v.signing_algorithm) > 0 }
}

