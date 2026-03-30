module "azure_subscription_onboarding" {
  source                 = "illumio/cloudsecure/illumio//modules/azure_subscription"
  version                = "~>1.6.4"
  name                   = "Azure Insights Unified-Shared2[ Do not delete ]"
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"
  mode                   = "Read"
  tags    = [
    "Unified_Shared2 Account",
  ]
}

module "azure_subscription_onboarding" {
  source                 = "illumio/cloudsecure/illumio//modules/azure_subscription"
  version                = "~>1.6.4"

  providers = {
    azurerm = azurerm.instances
  }

  name                   = "Azure Instances Insights Unified-Shared2[ Do not delete ]"
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"
  mode                   = "Read"
  tags    = [
    "Unified_Shared2 Account",
  ]
}