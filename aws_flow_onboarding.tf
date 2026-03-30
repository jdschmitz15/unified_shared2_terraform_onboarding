
module "aws_flow_logs_s3_buckets" {
  source         = "illumio/cloudsecure/illumio//modules/aws_flow_logs_s3_buckets"
  version        = "~>1.6.4"
  role_id        = module.aws_account_onboarding.role_id
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"

  s3_bucket_arns = [
    "arn:aws:s3:::tpm-awsfw-vpc-flowlogs",
  ]
  # s3_bucket_arns = [
  # ]

  # Testing with multiple another account with different S3 buckets
  # s3_bucket_arns = [
  #   "arn:aws:s3:::us-east-1-863518431588",
  #   "arn:aws:s3:::us-east-1-mxopndie-flow-logs",
  #   "arn:aws:s3:::jds-0ca035e26aabb7d04-bucket",
  # ]

}