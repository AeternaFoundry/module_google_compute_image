variable "compute_images" {
  description = <<EOT
Map of compute_images, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - description
    - disk_size_gb
    - family
    - labels
    - licenses
    - project
    - source_disk
    - source_image
    - source_snapshot
    - storage_locations
    - guest_os_features (block):
        - type (required)
    - image_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
        - rsa_encrypted_key (optional)
    - params (block):
        - resource_manager_tags (optional)
    - raw_disk (block):
        - container_type (optional)
        - sha1 (optional)
        - source (required)
    - shielded_instance_initial_state (block):
        - dbs (optional, block):
            - content (required)
            - file_type (optional)
        - dbxs (optional, block):
            - content (required)
            - file_type (optional)
        - keks (optional, block):
            - content (required)
            - file_type (optional)
        - pk (optional, block):
            - content (required)
            - file_type (optional)
    - source_disk_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
        - rsa_encrypted_key (optional)
    - source_image_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
        - rsa_encrypted_key (optional)
    - source_snapshot_encryption_key (block):
        - kms_key_self_link (optional)
        - kms_key_service_account (optional)
        - raw_key (optional)
        - rsa_encrypted_key (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name              = string
    deletion_policy   = optional(string)
    description       = optional(string)
    disk_size_gb      = optional(number)
    family            = optional(string)
    labels            = optional(map(string))
    licenses          = optional(list(string))
    project           = optional(string)
    source_disk       = optional(string)
    source_image      = optional(string)
    source_snapshot   = optional(string)
    storage_locations = optional(list(string))
    guest_os_features = optional(list(object({
      type = string
    })))
    image_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
      raw_key                 = optional(string)
      rsa_encrypted_key       = optional(string)
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    raw_disk = optional(object({
      container_type = optional(string)
      sha1           = optional(string)
      source         = string
    }))
    shielded_instance_initial_state = optional(object({
      dbs = optional(list(object({
        content   = string
        file_type = optional(string)
      })))
      dbxs = optional(list(object({
        content   = string
        file_type = optional(string)
      })))
      keks = optional(list(object({
        content   = string
        file_type = optional(string)
      })))
      pk = optional(object({
        content   = string
        file_type = optional(string)
      }))
    }))
    source_disk_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
      raw_key                 = optional(string)
      rsa_encrypted_key       = optional(string)
    }))
    source_image_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
      raw_key                 = optional(string)
      rsa_encrypted_key       = optional(string)
    }))
    source_snapshot_encryption_key = optional(object({
      kms_key_self_link       = optional(string)
      kms_key_service_account = optional(string)
      raw_key                 = optional(string)
      rsa_encrypted_key       = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

