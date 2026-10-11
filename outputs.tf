output "medialive_multiplexes_id" {
  description = "Map of id values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "medialive_multiplexes_arn" {
  description = "Map of arn values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "medialive_multiplexes_availability_zones" {
  description = "Map of availability_zones values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.availability_zones if v.availability_zones != null && length(v.availability_zones) > 0 }
}
output "medialive_multiplexes_multiplex_settings" {
  description = "Map of multiplex_settings values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => one(v.multiplex_settings) if v.multiplex_settings != null && length(v.multiplex_settings) > 0 }
}
output "medialive_multiplexes_name" {
  description = "Map of name values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "medialive_multiplexes_region" {
  description = "Map of region values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.region if v.region != null && length(v.region) > 0 }
}
output "medialive_multiplexes_start_multiplex" {
  description = "Map of start_multiplex values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.start_multiplex if v.start_multiplex != null }
}
output "medialive_multiplexes_tags" {
  description = "Map of tags values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "medialive_multiplexes_tags_all" {
  description = "Map of tags_all values across all medialive_multiplexes, keyed the same as var.medialive_multiplexes"
  value       = { for k, v in aws_medialive_multiplex.medialive_multiplexes : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

