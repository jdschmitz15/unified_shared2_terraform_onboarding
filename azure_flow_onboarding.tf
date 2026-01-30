
module "azure_flow_logs_storage_accounts" {
  source                      = "illumio/cloudsecure/illumio//modules/azure_flow_logs_storage_accounts"
  version                     = "~>1.6.4"
  service_principal_client_id = module.azure_subscription_onboarding.service_principal_client_id
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"
  storage_accounts = [
    {
      name                = "diag11f0a481ac028e33"
      resource_group_name = "testdrive"
    },
  {
      name                = "illumiosa333ee6westus"
      resource_group_name = "resourcegroup_westus"
    },
    {
      name                = "illumiosad1b6bfeastus"
      resource_group_name = "resourcegroup_westus"
    },
    {
      name                = "flowlogsadiv2"
      resource_group_name = "flowlogstest"
    },
    {
      name                = "flowlogsadinsg"
      resource_group_name = "flowlogstest"
    } 
  ]

  # Test with additional account and storage accounts
  # storage_accounts = [
  #   {
  #     name                = "flowlogs3z4febpq2olsk"
  #     resource_group_name = "jds-trial"
  #   },
  #   {
  #     name                = "illumiosaf7cbc7eastus2"
  #     resource_group_name = "illumioresourcegroup_eastus2"
  #   }
  # ]
}