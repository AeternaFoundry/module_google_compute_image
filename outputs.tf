output "compute_images_id" {
  description = "Map of id values across all compute_images, keyed the same as var.compute_images except keys with no id are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_images_archive_size_bytes" {
  description = "Map of archive_size_bytes values across all compute_images, keyed the same as var.compute_images except keys with no archive_size_bytes are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.archive_size_bytes if v.archive_size_bytes != null }
}
output "compute_images_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_images, keyed the same as var.compute_images except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_images_deletion_policy" {
  description = "Map of deletion_policy values across all compute_images, keyed the same as var.compute_images except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_images_description" {
  description = "Map of description values across all compute_images, keyed the same as var.compute_images except keys with no description are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_images_disk_size_gb" {
  description = "Map of disk_size_gb values across all compute_images, keyed the same as var.compute_images except keys with no disk_size_gb are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.disk_size_gb if v.disk_size_gb != null }
}
output "compute_images_effective_labels" {
  description = "Map of effective_labels values across all compute_images, keyed the same as var.compute_images except keys with no effective_labels are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "compute_images_family" {
  description = "Map of family values across all compute_images, keyed the same as var.compute_images except keys with no family are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.family if v.family != null && length(v.family) > 0 }
}
output "compute_images_guest_os_features" {
  description = "Map of guest_os_features values across all compute_images, keyed the same as var.compute_images except keys with no guest_os_features are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.guest_os_features if v.guest_os_features != null && length(v.guest_os_features) > 0 }
}
output "compute_images_image_encryption_key" {
  description = "Map of image_encryption_key values across all compute_images, keyed the same as var.compute_images except keys with no image_encryption_key are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.image_encryption_key) if v.image_encryption_key != null && length(v.image_encryption_key) > 0 }
  sensitive   = true
}
output "compute_images_label_fingerprint" {
  description = "Map of label_fingerprint values across all compute_images, keyed the same as var.compute_images except keys with no label_fingerprint are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.label_fingerprint if v.label_fingerprint != null && length(v.label_fingerprint) > 0 }
}
output "compute_images_labels" {
  description = "Map of labels values across all compute_images, keyed the same as var.compute_images except keys with no labels are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "compute_images_licenses" {
  description = "Map of licenses values across all compute_images, keyed the same as var.compute_images except keys with no licenses are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.licenses if v.licenses != null && length(v.licenses) > 0 }
}
output "compute_images_name" {
  description = "Map of name values across all compute_images, keyed the same as var.compute_images except keys with no name are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_images_params" {
  description = "Map of params values across all compute_images, keyed the same as var.compute_images except keys with no params are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_images_project" {
  description = "Map of project values across all compute_images, keyed the same as var.compute_images except keys with no project are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_images_raw_disk" {
  description = "Map of raw_disk values across all compute_images, keyed the same as var.compute_images except keys with no raw_disk are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.raw_disk) if v.raw_disk != null && length(v.raw_disk) > 0 }
}
output "compute_images_self_link" {
  description = "Map of self_link values across all compute_images, keyed the same as var.compute_images except keys with no self_link are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_images_shielded_instance_initial_state" {
  description = "Map of shielded_instance_initial_state values across all compute_images, keyed the same as var.compute_images except keys with no shielded_instance_initial_state are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.shielded_instance_initial_state) if v.shielded_instance_initial_state != null && length(v.shielded_instance_initial_state) > 0 }
}
output "compute_images_source_disk" {
  description = "Map of source_disk values across all compute_images, keyed the same as var.compute_images except keys with no source_disk are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.source_disk if v.source_disk != null && length(v.source_disk) > 0 }
}
output "compute_images_source_disk_encryption_key" {
  description = "Map of source_disk_encryption_key values across all compute_images, keyed the same as var.compute_images except keys with no source_disk_encryption_key are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.source_disk_encryption_key) if v.source_disk_encryption_key != null && length(v.source_disk_encryption_key) > 0 }
  sensitive   = true
}
output "compute_images_source_image" {
  description = "Map of source_image values across all compute_images, keyed the same as var.compute_images except keys with no source_image are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.source_image if v.source_image != null && length(v.source_image) > 0 }
}
output "compute_images_source_image_encryption_key" {
  description = "Map of source_image_encryption_key values across all compute_images, keyed the same as var.compute_images except keys with no source_image_encryption_key are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.source_image_encryption_key) if v.source_image_encryption_key != null && length(v.source_image_encryption_key) > 0 }
  sensitive   = true
}
output "compute_images_source_snapshot" {
  description = "Map of source_snapshot values across all compute_images, keyed the same as var.compute_images except keys with no source_snapshot are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.source_snapshot if v.source_snapshot != null && length(v.source_snapshot) > 0 }
}
output "compute_images_source_snapshot_encryption_key" {
  description = "Map of source_snapshot_encryption_key values across all compute_images, keyed the same as var.compute_images except keys with no source_snapshot_encryption_key are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => one(v.source_snapshot_encryption_key) if v.source_snapshot_encryption_key != null && length(v.source_snapshot_encryption_key) > 0 }
  sensitive   = true
}
output "compute_images_storage_locations" {
  description = "Map of storage_locations values across all compute_images, keyed the same as var.compute_images except keys with no storage_locations are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.storage_locations if v.storage_locations != null && length(v.storage_locations) > 0 }
}
output "compute_images_terraform_labels" {
  description = "Map of terraform_labels values across all compute_images, keyed the same as var.compute_images except keys with no terraform_labels are omitted"
  value       = { for k, v in google_compute_image.compute_images : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

