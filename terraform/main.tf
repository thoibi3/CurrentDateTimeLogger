terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  # profile = "default"
}

resource "aws_lambda_function" "createlamda" {
  filename      = "${path.module}/../lambda.zip"
  function_name = var.functionname
  role          = data.aws_iam_role.lambda_iamrolename.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.9"
}






