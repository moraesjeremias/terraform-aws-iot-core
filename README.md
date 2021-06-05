# terraform-aws-iot-core

Terraform Infrastructure as Code for AWS IoT Core Things deployment

## Motivation

This repo is part of [AutoMagic Light]("https://github.com/users/moraesjeremias/projects/2") project, helping automating iot things deployment in AWS.

## Usage

Assign the following variables in a `terraform.tfvars` file:

| variable       | description                                      | type         |     |
| -------------- | ------------------------------------------------ | ------------ | --- |
| region         | AWS Region IoT things will be deployed           | string       |     |
| thing_type     | Thing type, eg. Publisher, Subscriber, Router... | string       |     |
| iot_policy\*   | A Policy to be attached to certificate           | string       |     |
| sonoff_id_list | List of things ids to be created                 | list(string) |     |
| thing_group    | The things group in AWS                          | string       |     |

> Note: iot_policy in this repo was previously manually created, but it can be managed by Terraform as well.

## AWS Credentials

### Using local profiles

You may use AWS CLI profile directive in aws provider section in `main.tf` file. Eg:

#### Usage

```
provider "aws" {
  profile = var.aws_local_profile
  region  = var.region
}
```

You might use Environment Variables for AWS Credentials as well (works on Terraform Cloud)

#### Usage

```
$ export AWS_ACCESS_KEY_ID="<MY_AWS_ACCESS_KEY>"
$ export AWS_SECRET_ACCESS_KEY="<MY_AWS_SECRET_KEY>"
$ export AWS_DEFAULT_REGION="us-east-1"
```

## Initialize Terraform

`terraform init`

## Create the Plan

`terraform plan`

## Apply the Plan

`terraform apply -auto-approve`

## Teardown

`terraform destroy -auto-approve`
