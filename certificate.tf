resource "aws_iot_certificate" "things_cert" {
  active = true
}

resource "aws_iot_thing_principal_attachment" "subscriber_cert_attachment" {
  for_each  = aws_iot_thing.aws_subscriber_thing
  principal = aws_iot_certificate.things_cert.arn
  thing     = each.value.name
}

resource "aws_iot_thing_principal_attachment" "publisher_cert_attachment" {
  for_each  = aws_iot_thing.aws_publisher_thing
  principal = aws_iot_certificate.things_cert.arn
  thing     = each.value.name
}
