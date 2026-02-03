module "aws_account_onboarding" {
  source  = "illumio/cloudsecure/illumio//modules/aws_account"
  version = "~>1.6.4"
  name    = "AWS Insights Unified-Shared2[ Do not delete ]"
  iam_name_prefix       ="${var.regional_demo_name}${random_id.random_id.hex}"
  mode = "Read"
  tags    = {
    Name  = "Unified_Shared2 Account",
  }
}