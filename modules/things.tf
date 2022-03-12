resource "aws_iot_thing" "aws_subscriber_thing" {
  for_each        = toset(var.sonoff_id_list)
  name            = "${var.subscriber_group}-${each.value}"
  thing_type_name = aws_iot_thing_type.subscriber.name

  attributes = {
    "tag" = "${var.subscriber_group}-${each.value}"
  }
}

resource "aws_iot_thing" "aws_publisher_thing" {
  for_each        = toset(var.publisher_id_list)
  name            = "${var.publisher_group}-${each.value}"
  thing_type_name = aws_iot_thing_type.publisher.name

  attributes = {
    "tag" = "${var.publisher_group}-${each.value}"
  }
}
