variable "region" {
  type        = string
  description = "AWS region."
  default     = "us-east-1"
}

variable "iot_policy" {
  type        = string
  sensitive   = true
  description = "Base64 string containing iot Policy json. See policy/policy.example.json."
}

variable "sonoff_id_list" {
  type        = list(string)
  description = "List of subscribers things deployed in AWS."
  default     = ["1", "2", "3"]
}

variable "publisher_id_list" {
  type        = list(string)
  description = "List of publisher things deployed in AWS."
  default     = ["1", "2", "3"]
}

variable "subscriber_group" {
  type        = string
  description = "Group of subscriber things"
  default     = "subscriber-app-group"
}

variable "publisher_group" {
  type        = string
  description = "Group of publisher things"
  default     = "publisher-app-group"
}
