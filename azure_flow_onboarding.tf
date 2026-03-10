
module "azure_flow_logs_storage_accounts" {
  source                      = "illumio/cloudsecure/illumio//modules/azure_flow_logs_storage_accounts"
  version                     = "~>1.6.4"
  service_principal_client_id = module.azure_subscription_onboarding.service_principal_client_id
  iam_name_prefix       = "${var.regional_demo_name}${random_id.random_id.hex}"
  storage_accounts = [
    {
      name                = "trafficgenadi"
      resource_group_name = "trafficgen"
    } 
  ]
# This is the original list of storage accounts.  These will all be deleted.
# storage_accounts = [
#     {
#       name                = "diag11f0a481ac028e33"
#       resource_group_name = "testdrive"
#     },
#   {
#       name                = "illumiosa333ee6westus"
#       resource_group_name = "resourcegroup_westus"
#     },
#     {
#       name                = "illumiosad1b6bfeastus"
#       resource_group_name = "resourcegroup_eastus"
#     },
#     {
#       name                = "flowlogsadiv2"
#       resource_group_name = "flowlogstest"
#     },
#     {
#       name                = "flowlogsadinsg"
#       resource_group_name = "flowlogstest"
#     } 
#   ]

}