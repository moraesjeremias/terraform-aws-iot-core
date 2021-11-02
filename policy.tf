resource "aws_iot_policy" "tf_policy" {
  name = "tf_policy"

  policy = local.iot_policy_json
}

resource "aws_iot_policy_attachment" "thing_policy_attachment" {
  policy = aws_iot_policy.tf_policy.name
  target = aws_iot_certificate.things_cert.arn
}
