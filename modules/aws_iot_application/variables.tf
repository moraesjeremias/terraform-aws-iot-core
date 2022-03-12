variable "region" {
  type = string
}

variable "iot_policy" {
  type = string
  sensitive = true
}

variable "sonoff_id_list" {
  type = list(string)
}

variable "publisher_id_list" {
  type = list(string)
}

variable "subscriber_group" {
  type = string
}

variable "publisher_group" {
  type = string
}
