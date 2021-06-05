terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.37.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_iot_certificate" "things_cert" {
  active = true
}

resource "aws_iot_thing" "aws_thing" {
  for_each        = toset(var.sonoff_id_list)
  name            = "${var.thing_group}-${each.value}"
  thing_type_name = var.thing_type

  attributes = {
    "tag" = "${var.thing_group}-${each.value}"
  }
}

resource "aws_iot_policy_attachment" "thing_policy_attachment" {
  policy = var.iot_policy
  target = aws_iot_certificate.things_cert.arn
}


resource "aws_iot_thing_principal_attachment" "thing_cert_attachment" {
  for_each  = aws_iot_thing.aws_thing
  principal = aws_iot_certificate.things_cert.arn
  thing     = each.value.name
}
