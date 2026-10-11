variable "kms_verifies" {
  description = <<EOT
Map of kms_verifies, attributes below
Required:
    - crypto_endpoint
    - key_id
    - key_version_id
    - message
    - signature
    - signing_algorithm
Optional:
    - message_type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    crypto_endpoint   = string
    key_id            = string
    key_version_id    = string
    message           = string
    signature         = string
    signing_algorithm = string
    message_type      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

