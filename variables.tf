variable "terraform_profile" {
  type      = string
  sensitive = true
}

variable "region" {
  type = string
}

variable "thing_type" {
  type = string
}

variable "iot_policy" {
  type = string
}

variable "sonoff_id_list" {
  type = list(string)
}

variable "thing_group" {
  type = string
}
