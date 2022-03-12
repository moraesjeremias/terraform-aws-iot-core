# terraform-aws-iot-core

Terraform Infrastructure as Code for AWS IoT Core Things deployment

## Motivation

This repo is part of [AutoMagic Light](https://github.com/users/moraesjeremias/projects/2) project, helping automating iot things deployment in AWS.

## Usage

Check `aws_iot_application` [README](./modules/aws_iot_application/README.MD) and create a `.tfvars` file:

> Note: find a policy example in `policy/policy.example.json`

> Enconde `policy/policy.example.json` in base64 format and use it for `iot_policy` variable

## AWS Credentials

### Using local profiles

You may use AWS CLI profile directive in aws provider section in `backend.tf` file. Eg:

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

`terraform init -reconfigure -backend-config="../config/backend.conf"`

## Create the Plan

`terraform plan -var-file=variables.tfvars`

## Apply the Plan

`terraform apply -auto-approve -var-file=variables.tfvars`

## Teardown

`terraform destroy -auto-approve -var-file=variables.tfvars`
