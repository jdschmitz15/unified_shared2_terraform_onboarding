
module "azure_flow_logs_storage_accounts" {
  source                      = "illumio/cloudsecure/illumio//modules/azure_flow_logs_storage_accounts"
  version                     = "~>1.5.3"
  service_principal_client_id = module.azure_subscription_onboarding.service_principal_client_id
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"
  storage_accounts = [
    {
      name                = "flowlogsr46l2yw3duqfu"
      resource_group_name = "trial"
    }
  ]
}