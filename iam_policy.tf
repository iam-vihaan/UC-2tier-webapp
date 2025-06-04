
provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_policy" "terraform_s3_dynamodb_access" {
  name        = "s3fordynamodb"
  description = "Policy to allow Terraform to access S3 bucket and DynamoDB table for remote state management"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::my-terraform-state-bucket",
        "arn:aws:s3:::my-terraform-state-bucket/*"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:DeleteItem",
        "dynamodb:Scan",
        "dynamodb:Query",
        "dynamodb:UpdateItem"
      ],
      "Resource": "arn:aws:dynamodb:us-west-2:784733659029:table/terraform-lock"
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = var.iam_user_name
  policy_arn = aws_iam_policy.terraform_s3_dynamodb_access.arn
}

variable "iam_user_name" {
  description = "The name of the IAM user to attach the policy to"
  type        = string
}
