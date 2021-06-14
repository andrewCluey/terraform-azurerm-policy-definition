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
