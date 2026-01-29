module "aws_account_onboarding" {
  source  = "illumio/cloudsecure/illumio//modules/aws_account"
  version = "~>1.5.3"
  name    = "AWS Inisghts unified_shared2[ Do not delete]"
  iam_name_prefix       = var.regional_demo_name
  mode = "Read"
  tags    = {
    Name  = "Unified_Shared2 Account",
  }
}