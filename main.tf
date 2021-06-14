resource "azurerm_policy_definition" "im_caf_policies" {
  name                  = var.policy_name
  policy_type           = "Custom"
  mode                  = var.policy_mode
  display_name          = var.display_name
  metadata              = var.metadata #lookup(var.policy_definition, "metadata", {})
  parameters            = var.parameters #lookup(var.policy_definition, "parameters", {})
  policy_rule           = var.policy_rule #definition, "policyRule", {})
  management_group_name = var.management_group

}

variable "metadata" {
  type        = string
  description = "description"
}

variable "parameters" {
  type        = string
  description = "description"
}

variable "policy_rule" {
  type        = string
  description = "description"
  default     = "type"
}

variable "display_name" {
  type        = string
  description = "description"
}

/*

mode - (Required) The policy mode that allows you to specify which resource types will be evaluated. 
Possible values are 
   All, 
   Indexed, 
   Microsoft.ContainerService.Data, 
   Microsoft.CustomerLockbox.Data, 
   Microsoft.DataCatalog.Data, 
   Microsoft.KeyVault.Data, 
   Microsoft.Kubernetes.Data, 
   Microsoft.MachineLearningServices.Data, 
   Microsoft.Network.Data
   Microsoft.Synapse.Data

*/