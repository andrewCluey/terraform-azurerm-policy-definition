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

variable "management_group" {
  type        = string
  description = "description"
  default     = null
}

variable "policy_name" {
  type        = string
  description = "description"
}

variable "policy_mode" {
  type        = string
  description = "description"
  default     = "Indexed"
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