module "azure_subscription_onboarding" {
  source                 = "illumio/cloudsecure/illumio//modules/azure_subscription"
  version                = "~>1.5.3"
  name                   = "Azure Inisghts unified_shared2[ Do not delete]"
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"
  mode                   = "Read"
  tags    = [
    "Unified_Shared2 Account",
  ]
}