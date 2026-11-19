variable "subscription_id" {
  description = "Azure subscription ID containing the existing dev resource group."
  type        = string
  default     = "f9956b8e-e393-4e2a-9eaf-7441367bcf5f"
}

variable "resource_group_name" {
  description = "Existing resource group for the dev Foundry resource."
  type        = string
  default     = "rg-foundry-qna-nhs"
}

variable "location" {
  description = "Azure region that supports Microsoft Foundry projects."
  type        = string
  default     = "uksouth"
}

variable "custom_subdomain_name" {
  description = "Globally unique Foundry custom subdomain; defaults to the resource name."
  type        = string
  default     = null
}
