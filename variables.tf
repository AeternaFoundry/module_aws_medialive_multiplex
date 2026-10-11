variable "medialive_multiplexes" {
  description = <<EOT
Map of medialive_multiplexes, attributes below
Required:
    - availability_zones
    - name
Optional:
    - region
    - start_multiplex
    - tags
    - tags_all
    - multiplex_settings (block):
        - maximum_video_buffer_delay_milliseconds (optional)
        - transport_stream_bitrate (required)
        - transport_stream_id (required)
        - transport_stream_reserved_bitrate (optional)
EOT

  type = map(object({
    availability_zones = list(string)
    name               = string
    region             = optional(string)
    start_multiplex    = optional(bool)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    multiplex_settings = optional(object({
      maximum_video_buffer_delay_milliseconds = optional(number)
      transport_stream_bitrate                = number
      transport_stream_id                     = number
      transport_stream_reserved_bitrate       = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.medialive_multiplexes : (
        v.multiplex_settings == null || (v.multiplex_settings.transport_stream_bitrate >= 1000000 && v.multiplex_settings.transport_stream_bitrate <= 100000000)
      )
    ])
    error_message = "must be between 1000000 and 100000000"
  }
  validation {
    condition = alltrue([
      for k, v in var.medialive_multiplexes : (
        v.multiplex_settings == null || (v.multiplex_settings.maximum_video_buffer_delay_milliseconds == null || (v.multiplex_settings.maximum_video_buffer_delay_milliseconds >= 1000 && v.multiplex_settings.maximum_video_buffer_delay_milliseconds <= 3000))
      )
    ])
    error_message = "must be between 1000 and 3000"
  }
}

