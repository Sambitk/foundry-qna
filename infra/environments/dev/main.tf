module "foundry" {
  source = "../../modules/foundry"

  resource_group_id     = "/subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group_name}"
  location              = var.location
  foundry_resource_name = "foundry-res-vds"
  foundry_project_name  = "foundry-qna"
  custom_subdomain_name = var.custom_subdomain_name
}
