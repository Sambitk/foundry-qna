output "foundry_resource_id" {
  description = "Resource ID of the Microsoft Foundry resource."
  value       = azapi_resource.foundry.id
}

output "foundry_project_id" {
  description = "Resource ID of the Microsoft Foundry project."
  value       = azapi_resource.project.id
}
