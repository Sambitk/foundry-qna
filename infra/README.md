# Microsoft Foundry infrastructure

This Terraform configuration creates the `foundry-res-qna-nhs` Foundry resource
and its `foundry-qna-nhs-proj` project in an existing resource group. Both use
system-assigned managed identities. Public network access is enabled, and local
key authentication is disabled; access requires appropriate Azure RBAC roles.
No model deployments, role assignments, or private networking are included.

Authenticate to Azure using an authentication method supported by the AzAPI
provider. The subscription and resource group must already exist, the region
must support Foundry projects, and the deploying identity must have permission
to create the resources.

From this directory, initialize and review the plan before applying:

```powershell
terraform init
terraform plan -var="subscription_id=<subscription-id>" -var="resource_group_name=<resource-group>" -var="location=<azure-region>"
terraform apply -var="subscription_id=<subscription-id>" -var="resource_group_name=<resource-group>" -var="location=<azure-region>"
```

The default custom subdomain is `foundry-res-qna-nhs`. If it is already taken,
set `custom_subdomain_name` to a globally unique value without changing the
requested resource name. Use an appropriately secured remote state backend for
team or production use.
