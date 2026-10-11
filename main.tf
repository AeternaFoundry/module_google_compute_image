resource "google_compute_image" "compute_images" {
  for_each = var.compute_images

  name              = each.value.name
  deletion_policy   = each.value.deletion_policy
  description       = each.value.description
  disk_size_gb      = each.value.disk_size_gb
  family            = each.value.family
  labels            = each.value.labels
  licenses          = each.value.licenses
  project           = each.value.project
  source_disk       = each.value.source_disk
  source_image      = each.value.source_image
  source_snapshot   = each.value.source_snapshot
  storage_locations = each.value.storage_locations

  dynamic "guest_os_features" {
    for_each = each.value.guest_os_features != null ? each.value.guest_os_features : []
    content {
      type = guest_os_features.value.type
    }
  }

  dynamic "image_encryption_key" {
    for_each = each.value.image_encryption_key != null ? [each.value.image_encryption_key] : []
    content {
      kms_key_self_link       = image_encryption_key.value.kms_key_self_link
      kms_key_service_account = image_encryption_key.value.kms_key_service_account
      raw_key                 = image_encryption_key.value.raw_key
      rsa_encrypted_key       = image_encryption_key.value.rsa_encrypted_key
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "raw_disk" {
    for_each = each.value.raw_disk != null ? [each.value.raw_disk] : []
    content {
      container_type = raw_disk.value.container_type
      sha1           = raw_disk.value.sha1
      source         = raw_disk.value.source
    }
  }

  dynamic "shielded_instance_initial_state" {
    for_each = each.value.shielded_instance_initial_state != null ? [each.value.shielded_instance_initial_state] : []
    content {
      dynamic "dbs" {
        for_each = shielded_instance_initial_state.value.dbs != null ? shielded_instance_initial_state.value.dbs : []
        content {
          content   = dbs.value.content
          file_type = dbs.value.file_type
        }
      }
      dynamic "dbxs" {
        for_each = shielded_instance_initial_state.value.dbxs != null ? shielded_instance_initial_state.value.dbxs : []
        content {
          content   = dbxs.value.content
          file_type = dbxs.value.file_type
        }
      }
      dynamic "keks" {
        for_each = shielded_instance_initial_state.value.keks != null ? shielded_instance_initial_state.value.keks : []
        content {
          content   = keks.value.content
          file_type = keks.value.file_type
        }
      }
      dynamic "pk" {
        for_each = shielded_instance_initial_state.value.pk != null ? [shielded_instance_initial_state.value.pk] : []
        content {
          content   = pk.value.content
          file_type = pk.value.file_type
        }
      }
    }
  }

  dynamic "source_disk_encryption_key" {
    for_each = each.value.source_disk_encryption_key != null ? [each.value.source_disk_encryption_key] : []
    content {
      kms_key_self_link       = source_disk_encryption_key.value.kms_key_self_link
      kms_key_service_account = source_disk_encryption_key.value.kms_key_service_account
      raw_key                 = source_disk_encryption_key.value.raw_key
      rsa_encrypted_key       = source_disk_encryption_key.value.rsa_encrypted_key
    }
  }

  dynamic "source_image_encryption_key" {
    for_each = each.value.source_image_encryption_key != null ? [each.value.source_image_encryption_key] : []
    content {
      kms_key_self_link       = source_image_encryption_key.value.kms_key_self_link
      kms_key_service_account = source_image_encryption_key.value.kms_key_service_account
      raw_key                 = source_image_encryption_key.value.raw_key
      rsa_encrypted_key       = source_image_encryption_key.value.rsa_encrypted_key
    }
  }

  dynamic "source_snapshot_encryption_key" {
    for_each = each.value.source_snapshot_encryption_key != null ? [each.value.source_snapshot_encryption_key] : []
    content {
      kms_key_self_link       = source_snapshot_encryption_key.value.kms_key_self_link
      kms_key_service_account = source_snapshot_encryption_key.value.kms_key_service_account
      raw_key                 = source_snapshot_encryption_key.value.raw_key
      rsa_encrypted_key       = source_snapshot_encryption_key.value.rsa_encrypted_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

