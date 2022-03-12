resource "aws_iot_thing_type" "subscriber" {
  name = "TF_Subscriber"

  properties {
    description = "A subscriber thing - receives message from AWS MQTT broker"
  }
}


resource "aws_iot_thing_type" "publisher" {
  name = "TF_Publisher"

  properties {
    description = "A publisher thing - receives message from AWS MQTT broker"
  }
}