variable "subscription_id" {
  description = "Azure subscription ID containing the existing resource group."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing resource group for the Foundry resource."
  type        = string
}

variable "location" {
  description = "Azure region that supports Microsoft Foundry projects."
  type        = string
}

variable "custom_subdomain_name" {
  description = "Globally unique custom subdomain for the Foundry resource."
  type        = string
  default     = "foundry-res-qna-nhs"
}
